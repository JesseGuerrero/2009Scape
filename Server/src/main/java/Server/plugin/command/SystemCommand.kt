package plugin.command

import core.cache.Cache
import core.cache.def.impl.ItemDefinition
import core.game.node.entity.player.Player
import core.game.system.SystemManager
import core.game.system.SystemState
import core.game.system.command.CommandPlugin
import core.game.system.command.CommandSet
import core.game.system.config.ItemConfigParser
import core.game.world.repository.Repository
import core.net.amsc.WorldCommunicator
import core.plugin.InitializablePlugin
import core.plugin.Plugin
import plugin.ge.GrandExchangeDatabase
import plugin.ge.ResourceManager

/**
 * Represents commands related to system updating.
 * @author Vexia
 */
@InitializablePlugin
class SystemCommand : CommandPlugin() {
    @Throws(Throwable::class)
    override fun newInstance(arg: Any?): Plugin<Any?>? {
        link(CommandSet.DEVELOPER)
        return this
    }

    override fun parse(player: Player?, name: String?, args: Array<String?>?): Boolean {
        when (name) {
            "cms" -> {
                for (pl in Repository.getPlayers()) {
                    try {
                        pl.removeAttribute("combat-time")
                        pl.packetDispatch.sendLogout()
                        pl.clear()
                    } catch (t: Throwable) {
                        t.printStackTrace()
                    }
                }
                WorldCommunicator.terminate()
                WorldCommunicator.connect()
                return true
            }
//            "update" -> {
//                if (args!!.size > 1) {
//                    print("This ran")
//                    SystemManager.getUpdater().setCountdown(args[1]!!.toInt())
//                }
//                SystemManager.flag(SystemState.UPDATING)
//                return true
//            }
//            "cancel_update", "cancelupdate", "cancel" -> {
//                SystemManager.getUpdater().cancel()
//                return true
//            }
            "clear_resource" -> {
                ResourceManager.clearResource(toInteger(args!![1]!!))
                println("Cleared resource " + args[1] + "!")
                return true
            }
            "add_resource" -> {
                val sell = !(args!!.size > 3 && args[3] == "false")
                ResourceManager.addResource(toInteger(args[1]!!), toInteger(args[2]!!), sell)
                println("Added " + (if (sell) "selling" else "buying") + " resource " + args[1] + ", " + args[2] + "!")
                return true
            }
            "resetrm" -> {
                ResourceManager.getStock().clear()
                println("Fully reset resource manager!")
                return true
            }
            "setdefaultge" -> {
                var changes = 0
                var id = 0
                while (id < Cache.getItemDefinitionsSize()) {
                    val entry = GrandExchangeDatabase.getDatabase()[id]
                    if (entry == null) {
                        id++
                        continue
                    }
                    val def = ItemDefinition.forId(id)
                    var value = entry.value
                    if (value < def.getAlchemyValue(true)) {
                        value = def.getAlchemyValue(true)
                    }
                    if (value < def.getAlchemyValue(false)) {
                        value = def.getAlchemyValue(false)
                    }
                    if (value < def.value) {
                        value = def.value
                    }
                    if (value < def.getConfiguration(ItemConfigParser.GE_PRICE, 0)) {
                        value = def.getConfiguration(ItemConfigParser.GE_PRICE, 0)
                    }
                    if (value < def.getConfiguration(ItemConfigParser.SHOP_PRICE, 0)) {
                        value = def.getConfiguration(ItemConfigParser.SHOP_PRICE, 0)
                    }
                    if (value != entry.value) {
                        changes++
                    }
                    entry.value = value
                    id++
                }
                player!!.packetDispatch.sendMessage("Set default G.E prices - $changes changes made!")
                return true
            }
            "sgc", "systemgc" -> {
                System.gc()
                return true
            }
        }
        return false
    }
}