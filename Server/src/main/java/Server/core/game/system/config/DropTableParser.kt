package core.game.system.config

import core.ServerConstants
import core.cache.def.impl.NPCDefinition
import core.game.node.entity.npc.drop.DropFrequency
import core.game.node.entity.npc.drop.NPCDropTables
import core.game.node.item.ChanceItem
import core.game.node.item.WeightedChanceItem
import core.game.system.SystemLogger
import org.json.simple.JSONArray
import org.json.simple.JSONObject
import org.json.simple.parser.JSONParser
import java.io.FileReader
import java.util.*

class DropTableParser {//TODO: Must be updated before next base update
    val parser = JSONParser()
    var reader: FileReader? = null

    fun load(){
        var count = 0
        reader = FileReader(ServerConstants.CONFIG_PATH + "drop_tables.json")
        val configs = parser.parse(reader) as JSONArray
        for(config in configs){
            val e = config as JSONObject
            val id = e["npc_id"].toString().toInt()
            val defaultTable = parseTable(e["default"].toString())
            val mainTable = parseTable(e["main"].toString())
            val charmTable = parseTable(e["charm"].toString())
            val def = NPCDefinition.forId(id)
            val tables = NPCDropTables(def)
            def.dropTables = tables
            tables.defaultTable.addAll(defaultTable as List<ChanceItem>)
            tables.mainTable.addAll(mainTable as List<ChanceItem>)
            tables.charmTable.addAll(charmTable as List<ChanceItem>)
            count++
        }
        SystemLogger.log("[Config Parser]: Parsed $count drop tables.")
    }

//    fun load(){
//        var count = 0
//        reader = FileReader(ServerConstants.CONFIG_PATH + "drop_tables.json")
//        val obj = parser.parse(reader) as JSONArray
//        for(i in obj){
//            val tab = i as JSONObject
//            val ids = tab["ids"].toString().split(",")
//            for(n in ids){
//                val def = NPCDefinition.forId(n.toInt()).dropTables
//                def ?: continue
//                val mainTable: List<WeightedChanceItem> = parseTable(tab["main"] as JSONArray)
//                val charmTable: List<WeightedChanceItem> = parseTable(tab["charm"] as JSONArray)
//                val defaultTable: List<WeightedChanceItem> = parseTable(tab["default"] as JSONArray)
//                def.mainTable.addAll(mainTable)
//                def.charmTable.addAll(charmTable)
//                def.defaultTable.addAll(defaultTable)
//            }
//        }
//        SystemLogger.log("[Config Parser]: Parsed $count drop tables.")
//    }

//    private fun parseTable(data: JSONArray): List<WeightedChanceItem> {//TODO: Must be updated before next base update
//        val table: MutableList<WeightedChanceItem> = ArrayList()
//        for(it in data){
//            val item = it as JSONObject
//            val id = item["id"].toString().toInt()
//            val minAmount = item["minAmount"].toString().toInt()
//            val maxAmount = item["maxAmount"].toString().toInt()
//            val weight = item["weight"].toString().toInt()
//            val newItem = WeightedChanceItem(id,minAmount,maxAmount,weight)
//            table.add(newItem)
//        }
//        return table
//    }

    private fun parseTable(data: String?): List<ChanceItem>? {
        val table: MutableList<ChanceItem> = ArrayList()
        if (data == null || data.length == 0) {
            return table
        }
        val datas = data.split("~".toRegex()).toTypedArray()
        var tokens: Array<String>? = null
        for (d in datas) {
            tokens = d.replace("{", "").replace("}", "").split(",".toRegex()).toTypedArray()
            if(tokens.size == 1){
                continue
            }
            try {
                table.add(ChanceItem(Integer.valueOf(tokens[0].trim { it <= ' ' }), Integer.valueOf(tokens[1].trim { it <= ' ' }), Integer.valueOf(tokens[2].trim { it <= ' ' }), 1000, tokens[3].trim { it <= ' ' }.toDouble(), DropFrequency.valueOf(tokens[4]), if (tokens.size == 6) Integer.valueOf(tokens[5].trim { it <= ' ' }) else -1))
            } catch (e: NumberFormatException) {
                System.err.println("Error parsing NPC drops!  Data -> " + data + ", tokens -> " + ", exception -> " + e.message)
            }
        }
        return table
    }
}