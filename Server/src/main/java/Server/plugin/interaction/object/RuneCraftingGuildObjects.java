package plugin.interaction.object;

import core.cache.def.impl.ObjectDefinition;
import core.game.interaction.OptionHandler;
import core.game.node.Node;
import core.game.node.entity.player.Player;
import core.game.node.object.GameObject;
import core.game.world.map.Location;
import core.plugin.InitializablePlugin;
import core.plugin.Plugin;

/**
 * Created for WarByCode
 * User: Ethan Kyle Millard
 * Date: March 25, 2020
 * Time: 7:19 PM
 */
@InitializablePlugin
public class RuneCraftingGuildObjects extends OptionHandler {


    @Override
    public boolean handle(Player player, Node node, String option) {
        GameObject object = ((GameObject) node);

        switch(object.getId()) {
            case 38279:
                if (player.getViewport().getRegion().getRegionId() == 12337) {
                    player.teleport(Location.create(1696, 5460, 2));
                } else {
                    player.teleport(Location.create(3106, 3160, 1));
                }
                break;
        }

        return true;
    }

    @Override
    public Plugin<Object> newInstance(Object arg) throws Throwable {
        ObjectDefinition.forId(38279).getConfigurations().put("option:enter", this);
        return this;
    }
}
