package core.game.node.entity.player.link.statistics;

import java.nio.ByteBuffer;
import java.util.ArrayList;

import core.game.component.Component;
import plugin.skill.Skills;
import core.game.node.entity.player.Player;
import core.game.node.entity.player.info.Rights;
import core.game.node.entity.player.info.login.SavingModule;
import core.game.node.entity.player.link.IronmanMode;
import core.game.node.entity.player.link.music.MusicEntry;
import core.game.node.entity.player.link.quest.Quest;
import core.game.node.entity.player.link.quest.QuestRepository;
import core.tools.StringUtils;

/**
 * statistics manager duh
 * @author jamix77
 *
 */
public class PlayerStatisticsManager implements SavingModule {
	
	/**
	 * Array of statistics.
	 */
	private final ArrayList<Statistic> STATISTICS = new ArrayList<Statistic>();

	
	private Statistic
	AL_KHARID_GATE_PASSES,
	FLAX_PICKED,
	CLUES_COMPLETED,
	ENTITIES_KILLED,
	DEATHS,
	LOGS_OBTAINED,
	PATS;

	
	/**
     * The player instance for this manager.
     */
    private final Player player;

    /**
     * 
     * Constructs a new @{Code PlayerStatisticsManager} object.
     * @param player
     */
	public PlayerStatisticsManager(Player player) {
		this.player = player;
		if (!player.isArtificial())
		initStats();
	}
	
	private void initStats() {
		AL_KHARID_GATE_PASSES = new Statistic(player,this);
		FLAX_PICKED = new Statistic(player,this);
		CLUES_COMPLETED = new Statistic(player,this);
		LOGS_OBTAINED = new Statistic(player,this);
		ENTITIES_KILLED = new Statistic(player,this);
		DEATHS = new Statistic(player,this);
		PATS = new Statistic(player,this);
	}

	@Override
	public void save(ByteBuffer buffer) {
		for (int i = 0; i < STATISTICS.size(); i++) {
			Statistic s = STATISTICS.get(i);
			buffer.put((byte) 1).putInt(i).putInt(s.getStatisticalAmount());
		}
		buffer.put((byte)0);
	}

	@Override
	public void parse(ByteBuffer buffer) {
		int opcode;
		while ((opcode = buffer.get() & 0xFF) != 0) {
			switch (opcode) {
			case 1:	
				int index = buffer.getInt();
				int amount = buffer.getInt();
				STATISTICS.get(index).setStatisticalAmount(amount);
				break;
			}
		}
		
	}
	
	public static void sendHiscore(Player player, Player target) {
		if (player.getInterfaceManager().isOpened()) {
			player.sendMessage("Finish what you're currently doing.");
			return;
		}
		player.getInterfaceManager().open(new Component(275));
		//CLear old data
		for (int i = 0; i < 311; i++) {
			player.getPacketDispatch().sendString("", 275, i);
		}
		// Title
		//14 Ult IM
		//13 IM
		//15 HCIM
		player.getPacketDispatch().sendString("" + (target.getRights() == Rights.ADMINISTRATOR ? "<img=1>" : (target.getRights() == Rights.PLAYER_MODERATOR ? "<img=0>" : (target.getIronmanManager().getMode() == IronmanMode.STANDARD ? "<img=13>" : (target.getIronmanManager().getMode() == IronmanMode.ULTIMATE ? "<img=14>" : (target.getIronmanManager().getMode() == IronmanMode.HARDCORE ? "<img=15>" : ""))))) + "<col=ae1515>" + target.getUsername() + "</col>'s stats.", 275, 2);

		// Content
		int lineId = 11;
		player.getPacketDispatch().sendString("Total level: " + target.getSkills().getTotalLevel(), 275, lineId++);
		player.getPacketDispatch().sendString("Total xp: " + StringUtils.getFormattedNumber(target.getSkills().getTotalXp()), 275, lineId++);
		for (int i = 0; i < Skills.SKILL_NAME.length; i++) {
			player.getPacketDispatch().sendString("" + Skills.SKILL_NAME[i] + ": " + target.getSkills().getStaticLevel(i) + ", Prestige: " + target.getSkills().getPrestigeLevel(i), 275, lineId++);
		}
		
		//stats
		player.getPacketDispatch().sendString("Music tracks unlocked: " +  target.getMusicPlayer().getUnlocked().size() + "/" + MusicEntry.getSongs().size(), 275, lineId++);
		player.getPacketDispatch().sendString("Clue scrolls completed: " +  target.getStatisticsManager().getCLUES_COMPLETED().getStatisticalAmount(), 275, lineId++);
		player.getPacketDispatch().sendString("Slayer tasks completed: " + target.getSlayer().getTotalTasks(),275,lineId++);
		player.getPacketDispatch().sendString("Al kharid passes: " + target.getStatisticsManager().getAL_KHARID_GATE_PASSES().getStatisticalAmount(), 275, lineId++);
		player.getPacketDispatch().sendString("Enemies killed: " +  target.getStatisticsManager().getENTITIES_KILLED().getStatisticalAmount(), 275, lineId++);
		player.getPacketDispatch().sendString("Logs chopped: " +  target.getStatisticsManager().getLOGS_OBTAINED().getStatisticalAmount(), 275, lineId++);
		player.getPacketDispatch().sendString("Flax picked: " +  target.getStatisticsManager().getFLAX_PICKED().getStatisticalAmount(), 275, lineId++);
		player.getPacketDispatch().sendString("Deaths: " +  target.getStatisticsManager().getDEATHS().getStatisticalAmount(), 275, lineId++);
		player.getPacketDispatch().sendString("Pats: " +  target.getStatisticsManager().getPATS().getStatisticalAmount(), 275, lineId++);
		
		//quests
		player.getPacketDispatch().sendString("", 275, lineId++);
		player.getPacketDispatch().sendString("<u><col=0000FF>Quests Completed:", 275, lineId++);
		for (Quest q : QuestRepository.getQuests().values()) {
			player.getPacketDispatch().sendString("" + (q.isCompleted(target) ? "<col=00FF00>" : "<col=ae1515>") + q.getName() + " ", 275, lineId++);
		}
	
	}
	
	/**
	 * Add a statistic to the arraylist.
	 * @param statistic
	 */
	public void addStatistic(Statistic statistic) {
		STATISTICS.add(statistic);
	}
	
	
	public ArrayList<Statistic> getSTATISTICS() {
		return STATISTICS;
	}

	public Statistic getAL_KHARID_GATE_PASSES() {
		return AL_KHARID_GATE_PASSES;
	}

	public Statistic getFLAX_PICKED() {
		return FLAX_PICKED;
	}

	public Statistic getCLUES_COMPLETED() {
		return CLUES_COMPLETED;
	}

	public Statistic getLOGS_OBTAINED() {
		return LOGS_OBTAINED;
	}

	public Statistic getENTITIES_KILLED() {
		return ENTITIES_KILLED;
	}

	public Statistic getDEATHS() {
		return DEATHS;
	}

	public Statistic getPATS() {
		return PATS;
	}
	
}
