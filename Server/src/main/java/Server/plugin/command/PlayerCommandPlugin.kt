package plugin.command

import core.cache.def.impl.ItemDefinition
import core.cache.def.impl.NPCDefinition
import core.game.component.Component
import core.game.node.entity.npc.drop.DropFrequency
import core.game.node.entity.player.Player
import core.game.node.entity.player.info.Rights
import core.game.node.entity.player.link.IronmanMode
import core.game.node.entity.player.link.RunScript
import core.game.node.entity.player.link.quest.QuestRepository
import core.game.node.entity.player.link.statistics.PlayerStatisticsManager
import core.game.node.item.ChanceItem
import core.game.system.SystemManager
import core.game.system.SystemState
import core.game.system.command.CommandPlugin
import core.game.system.command.CommandSet
import core.game.system.communication.ClanRepository
import core.game.system.communication.CommunicationInfo
import core.game.world.GameWorld
import core.game.world.map.RegionManager
import core.game.world.repository.Repository
import core.game.world.update.flag.context.Animation
import core.net.amsc.WorldCommunicator
import core.plugin.InitializablePlugin
import core.plugin.Plugin
import core.tools.RandomFunction
import core.tools.StringUtils
import plugin.ge.GEOfferDispatch
import plugin.skill.Skills

/**
 * Handles a player command.
 * @author Vexia
 */
@InitializablePlugin
class PlayerCommandPlugin : CommandPlugin() {
    @Throws(Throwable::class)
    override fun newInstance(arg: Any?): Plugin<Any?>? {
        link(CommandSet.PLAYER)
        return this
    }

    override fun parse(player: Player?, name: String?, arguments: Array<String?>?): Boolean {
        when (name) {
            "update" -> {
                if (arguments!!.size > 1 && player!!.username.equals("jawarrior", true) ||
                        arguments!!.size > 1 && player!!.username.equals("jawarrior1", true)) {
                    //player!!.getPacketDispatch().sendMessage(arguments!!.get(0) + arguments!!.get(1))
                    SystemManager.getUpdater().setCountdown(arguments!!.get(1)!!.toInt())
                    //SystemManager.getUpdater().
                }
                SystemManager.flag(SystemState.UPDATING)
                return true
            }
            "cancel_update", "cancelupdate", "cancel" -> {
                print("were here")
                SystemManager.getUpdater().cancel()
                return true
            }
            "allquest" -> {
                for (quest in QuestRepository.getQuests().values) {
                    if(quest.isCompleted(player)) {
                        quest.finish(player)
                    }

                }
                return true
            }
            "stats" -> {
                //println(PLAYER_SAVE_PATH)
                PlayerStatisticsManager.sendHiscore(player, player)
            }
            "bank" -> if (!player!!.isAdmin) {
                player.sendChat("Hey, everyone, I just tried to do something very silly!")
            }
            "bankresettabs" -> {
                var i = 0
                while (i < player!!.bank.tabStartSlot.size) {
                    player.bank.tabStartSlot[i] = 0
                    i++
                }
                player.bank.tabIndex = 10
                if (player.bank.isOpen) {
                    player.interfaceManager.close()
                }
                player.sendMessage("<col=3498db>Your bank tabs have been reset!")
                return true
            }
            "ge" -> {
                val offers = HashMap<Int,Int>()
                for(offer in GEOfferDispatch.offerMapping.values){
                    val item = offer.itemId
                    val amount = offer.amount - offer.completedAmount
                    if(offers[item] == null){
                        offers[item] = amount
                    } else {
                        offers[item] = offers[item]!!.plus(amount)
                    }
                }
                for (i in 0..310) {
                    player!!.packetDispatch.sendString("", 275, i)
                }
                var lineId = 11
                player!!.packetDispatch.sendString("Active Sell Offers", 275, 2)
                var counter = 0
                for(i in 0..299) {
                    val offer = offers.entries.elementAtOrNull(i)
                    if (offer != null)
                        player.packetDispatch.sendString("${ItemDefinition.forId(offer.key).name} x${offer.value}", 275, lineId++)
                    else
                        player.packetDispatch.sendString("", 275, lineId++)
                }

                player.interfaceManager.open(Component(275))
                return true
            }
            "bankresetpin" -> {
                if (arguments!!.size < 2) {
                    player!!.sendMessage("<col=e74c3c>You must specify your current pin!")
                    return true
                }
                val oldPin = arguments[1] ?: return true
                if (!player!!.bankPinManager.hasPin()) {
                    player.sendMessage("<col=e74c3c>You don't currently have a pin set.")
                    return true
                }
                if (oldPin != player.bankPinManager.pin) {
                    player.sendMessage("<col=e74c3c>$oldPin doesn't match your current pin.")
                    return true
                }
                player.bankPinManager.pin = null
                player.sendMessage("<col=3498db>Your pin has been reset.")
                return true
            }
            "players" -> {
                val totalCount = Repository.getPlayers().size
                var ironmanCount = 0
                var hardcoreIronmanCount = 0
                var ultIronmanCount = 0
                var botCount = 0
                for (p in Repository.getPlayers()) {
                    if (p.ironmanManager.mode == IronmanMode.ULTIMATE) { //If this was check restriction, ultimate irons would be counted as all
                        ultIronmanCount++ //three modes, affecting the player count
                    } else if (p.ironmanManager.mode == IronmanMode.HARDCORE) {
                        hardcoreIronmanCount++
                    } else if (p.ironmanManager.mode == IronmanMode.STANDARD) {
                        ironmanCount++
                    }
                    if (p.isArtificial) {
                        botCount++
                    }
                }
                val regular = totalCount - ironmanCount - hardcoreIronmanCount - ultIronmanCount - botCount
                val playerCount = totalCount - botCount
                if (totalCount == 1) {
                    player!!.sendMessage("<col=3498db>There is 1 active player in this world.")
                } else {
                    player!!.sendMessage("<col=3498db>There are $playerCount active players in this world: $regular regular, $ironmanCount IM, $hardcoreIronmanCount HCIM, $ultIronmanCount UIM.")
                }
                return player.rights === Rights.REGULAR_PLAYER
            }
            "yell" -> {
                if (!player!!.isAdmin) {
                    player.sendMessages("Join clan chat \"" + GameWorld.getName() + "\" to talk globally.")
                    return true
                }
                if (player.details.isMuted) {
                    player.sendMessage("<col=e74c3c>You have been " + (if (player.details.isPermMute) "permanently" else "temporarily") + " muted due to breaking a rule.")
                    return true
                }
                if (WorldCommunicator.isEnabled()) {
                    if (ClanRepository.getDefault().isBanned(player.name)) {
                        player.sendMessages("<col=e74c3c>You are temporarily unable to yell as you are banned from the main clan chat.", "Don't be annoying!")
                        return true
                    }
                }
                var text = getArgumentLine(arguments!!)
                if (text.contains("<img=") || text.contains("<br>") || text.contains("<col=") || text.contains("<shad=")) {
                    player.sendMessage("<col=e74c3c>Bad! No images/text effects allowed in yell chat.")
                    return true
                }
                var length = text.length
                if (length > 100) {
                    length = 100
                }
                if (text.length >= 2) {
                    if (Character.isLowerCase(text[0])) {
                        text = Character.toUpperCase(text[0]).toString() + text.substring(1, length)
                    }
                    text = getYellPrefix(player) + text + "</col>"
                    for (p in Repository.getPlayers()) {
                        if (p.isActive) {
                            p.packetDispatch.sendMessage(text)
                        }
                    }
                } else {
                    player.sendMessage("<col=e74c3c>Your message was too short.")
                }
                return true
            }
            "togglenews" -> {
                player!!.savedData.globalData.isDisableNews = !player.savedData.globalData.isDisableNews
                player.sendMessage("<col=3498db>" + if (player.savedData.globalData.isDisableNews) "You will no longer see news notifications." else "You will now see news notifications.")
                return true
            }
            "commands", "command", "commandlist" -> {
                sendCommands(player)
                return true
            }
            "quests" -> {
                sendQuests(player)
                return true
            }
            "roll" -> {
                rollSkill(player)
                return true
            }
            "drops" -> {
                if (arguments!!.size > 0) {
                    val npcid = toInteger(arguments[1]!!)
                    getDrops(player, npcid)
                } else {
                    player!!.packetDispatch.sendMessage("Syntax: ::getdrops id")
                }
                return true
            }
            "npcs" -> {
                getNPCs(player)
                return true
            }
            "reply" -> {
                if (player!!.interfaceManager.isOpened) {
                    player.sendMessage("<col=e74c3c>Please finish what you're doing first.")
                    return true
                }
                if (player.attributes.containsKey("replyTo")) {
                    player.setAttribute("keepDialogueAlive", true)
                    val replyTo = player.getAttribute("replyTo", "").replace("_".toRegex(), " ")
                    player.setAttribute("runscript", object : RunScript() {
                        override fun handle(): Boolean {
                            CommunicationInfo.sendMessage(player, replyTo.toLowerCase(), getValue() as String)
                            player.removeAttribute("keepDialogueAlive")
                            return true
                        }
                    })
                    player.dialogueInterpreter.sendMessageInput(StringUtils.formatDisplayName(replyTo))
                } else {
                    player.packetDispatch.sendMessage("<col=3498db>You have not recieved any recent messages to which you can reply.")
                }
                return true
            }
        }
        return false
    }
    /**
     * Sends commands.
     * @param player the player.
     */
    /**
     * ::npcs lists NPCs in the area and their IDs
     * @author ceik
     */
    fun getNPCs(player: Player?) {
        player!!.interfaceManager.close()
        val npcs = RegionManager.getLocalNpcs(player)
        for (i in 0..310) {
            player.packetDispatch.sendString("", 275, i)
        }
        player.packetDispatch.sendString("<col=ecf0f1>Nearby NPCs</col>", 275, 2)
        var lineid = 11
        for (n in npcs) {
            player.packetDispatch.sendString("<col=05edce>[" + n.id + "]</col> " + "<col=f5fffe>" + n.name + "</col>", 275, lineid++)
        }
        player.interfaceManager.open(Component(275))
    }

    /**
     * ::drops lists the drops for a specific NPC ID
     * @author ceik
     */
    fun getDrops(player: Player?, npc: Int) {
        player!!.interfaceManager.close()
        for (i in 0..310) {
            player.packetDispatch.sendString("", 275, i)
        }
        var lineid = 11
        val drops = NPCDefinition.forId(npc).dropTables.mainTable
        val drop: ListIterator<*> = drops.listIterator()
        player.packetDispatch.sendString("<col=ecf0f1>" + NPCDefinition.forId(npc).name + " (Level " + NPCDefinition.forId(npc).combatLevel + ")</col>", 275, 2)
        while (drop.hasNext()) {
            val current = drop.next() as ChanceItem
            var rarity = ""
            when (current.dropFrequency) {
                DropFrequency.UNCOMMON -> rarity = "<col=edce05>UNCOMMON</col>"
                DropFrequency.RARE -> rarity = "<col=ff6b08>RARE</col>"
                DropFrequency.VERY_RARE -> rarity = "<col=ff0000>VERY RARE</col>"
                DropFrequency.COMMON -> rarity = "<col=04c91e>COMMON</col>"
            }
            player.packetDispatch.sendString("(" + rarity + ") <col=f5fffe>" + (if (current.minimumAmount - current.maximumAmount != 0) current.minimumAmount.toString() + "-" + current.maximumAmount else "") + " " + ItemDefinition.forId(current.id).name + "</col>", 275, lineid++)
        }
        player.interfaceManager.open(Component(275))
    }

    /**
     * ::roll command
     * @author ceik
     */
    fun rollSkill(player: Player?) {
        val rareEventChance = RandomFunction.random(100) == 54
        if (rareEventChance) {
            val rareChoice = RandomFunction.random(2, 5)
            if (rareChoice % 5 == 0) {
                player!!.sendChat("Oh god! Somebody help me!")
                player.animator.reset()
                player.animator.forceAnimation(Animation(3123))
                return
            }
            if (rareChoice % 2 == 0) {
                player!!.sendChat("Yibbly jibbly dibbly nibbly doo dah")
                return
            }
            if (rareChoice % 3 == 0) {
                player!!.sendChat("Oh god! Somebody help me!")
                player.animator.reset()
                player.animator.forceAnimation(Animation(92))
                return
            }
        }
        val skill = RandomFunction.random(0, 23)
        player!!.sendChat("I think I should train " + Skills.SKILL_NAME[skill])
    }

    /**
     * Sends commands.
     * @param player the player.
     */
    private fun sendCommands(player: Player?) {
        if (player!!.interfaceManager.isOpened) {
            player.sendMessage("Finish what you're currently doing.")
            return
        }
        player.interfaceManager.open(Component(275))
        //CLear old data
        for (i in 0..310) {
            player.packetDispatch.sendString("", 275, i)
        }
        // Title
        player.packetDispatch.sendString("<col=ecf0f1>" + GameWorld.getName() + " commands</col>", 275, 2)

        // Content
        var lineId = 11
        player.packetDispatch.sendString("<col=ecf0f1>::commands", 275, lineId++)
        player.packetDispatch.sendString("<col=2c3e50>Shows this list.", 275, lineId++)
        player.packetDispatch.sendString("<col=ecf0f1>::players", 275, lineId++)
        player.packetDispatch.sendString("<col=2c3e50>Get online player count.", 275, lineId++)
        player.packetDispatch.sendString("<col=ecf0f1>::npcs", 275, lineId++)
        player.packetDispatch.sendString("<col=2c3e50>Lists all NPCs in your areas and their IDs", 275, lineId++)
        player.packetDispatch.sendString("<col=ecf0f1>::drops id", 275, lineId++)
        player.packetDispatch.sendString("<col=2c3e50>Lists drops for a given NPC id", 275, lineId++)
        player.packetDispatch.sendString("<col=ecf0f1>::quests", 275, lineId++)
        player.packetDispatch.sendString("<col=2c3e50>Shows a list of all available quests.", 275, lineId++)
        player.packetDispatch.sendString("<col=ecf0f1>::togglenews", 275, lineId++)
        player.packetDispatch.sendString("<col=2c3e50>Toggles the news broadcasts.", 275, lineId++)
        player.packetDispatch.sendString("<col=ecf0f1>::toggleatk", 275, lineId++)
        player.packetDispatch.sendString("<col=2c3e50>Toggles left-click attack option mode.", 275, lineId++)
        player.packetDispatch.sendString("<col=ecf0f1>::bankresetpin [pin]", 275, lineId++)
        player.packetDispatch.sendString("<col=2c3e50>Remove your bank pin.", 275, lineId++)
        player.packetDispatch.sendString("<col=ecf0f1>::bankresettabs", 275, lineId++)
        player.packetDispatch.sendString("<col=2c3e50>Reset all of your bank tabs.", 275, lineId++)
        player.packetDispatch.sendString("<col=ecf0f1>::stats", 275, lineId++)
        player.packetDispatch.sendString("<col=2c3e50>View a player's stats.", 275, lineId++)
        player.packetDispatch.sendString("<col=ecf0f1>::roll", 275, lineId++)
        player.packetDispatch.sendString("<col=2c3e50>Picks a skill to train for you, and perhaps more?", 275, lineId++)
    }

    /**
     * Sends the quests.
     * @param player the player.
     */
    private fun sendQuests(player: Player?) {
        player!!.interfaceManager.open(Component(275))
        for (i in 0..310) {
            player.packetDispatch.sendString("", 275, i)
        }
        var lineId = 11
        player.packetDispatch.sendString("<col=ecf0f1>" + "Available Quests" + "</col>", 275, 2)
        for (q in QuestRepository.getQuests().values) {
            // Add a space to beginning and end of string for the strikethrough
            player.packetDispatch.sendString("<col=ecf0f1>" + (if (q.isCompleted(player)) "<str> " else "") + q.name + " ", 275, lineId++)
        }
    }

    companion object {
        /**
         * Gets the yell prefix for the given player.
         * @param player The player.
         * @return The prefix used in yell.
         */
        private fun getYellPrefix(player: Player?): String {
            var color = "<col=800080>"
            val sb = StringBuilder("[")
            if (player!!.details.rights.isVisible(player)) {
                val right = player.getAttribute("visible_rank", player.details.rights)
                when (right) {
                    Rights.ADMINISTRATOR -> color = "<col=009999>"
                    Rights.PLAYER_MODERATOR -> color = "<col=81819B>"
                    else -> {
                    }
                }
            }
            val icon = Rights.getChatIcon(player)
            if (icon > 0) {
                sb.append("<img=").append(icon - 1).append(">")
            }
            sb.append(color).append(player.username).append("</col>")
            sb.append("]: ").append(color)
            return sb.toString()
        }
    }
}