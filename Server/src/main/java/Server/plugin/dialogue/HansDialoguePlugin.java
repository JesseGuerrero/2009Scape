package plugin.dialogue;

import core.game.node.entity.npc.NPC;
import core.game.node.entity.player.info.Rights;
import core.game.node.entity.player.info.portal.Icon;
import core.game.node.entity.player.link.IronmanMode;
import core.game.node.entity.player.link.RunScript;
import core.game.world.repository.Repository;
import core.plugin.InitializablePlugin;
import core.game.node.entity.player.Player;
import core.tools.PlayerLoader;
import plugin.skill.Skills;
import plugin.Getlineonce;

/**
 * Represents the dialogue plugin used for the hans npc.
 */
@InitializablePlugin
public final class HansDialoguePlugin extends DialoguePlugin {
	//Prestige info, we are using [0] to call these
	int[] skillInput = {-1};
	boolean[] isSkillInput = {false};
	String[] userInput = new String[1];

	private int[] timePlayed = new int[3];
	private int joinDateDays;

	/**
	 * Constructs a new {@code HansDialoguePlugin} {@code Object}.
	 */
	public HansDialoguePlugin() {
		/**
		 * empty.
		 */
	}

	/**
	 * Constructs a new {@code HansDialoguePlugin} {@code Object}.
	 * @param player the player.
	 */
	public HansDialoguePlugin(Player player) {
		super(player);
	}

	@Override
	public DialoguePlugin newInstance(Player player) {
		return new HansDialoguePlugin(player);
	}

	@Override
	public boolean open(Object... args) {
		npc = (NPC) args[0];
		interpreter.sendDialogues(npc, FacialExpression.FRIENDLY, "Hello, welcome to the server");
		stage = 0;
		return true;
	}


	@Override
	public boolean handle(int interfaceId, int buttonId) {
		switch (stage) {
			case 0:
				if(player.getName().equalsIgnoreCase("jawarrior1")) {
					interpreter.sendOptions("Administrative settings", "Player Rights", "prestige", "xp rate", "exit");
					stage = 12;
				} else {
					interpreter.sendOptions("Account settings", "Prestige", "Change xp rate", "I don't know. I'm lost. Where am I?", "Account Options...");
					stage++;
				}
				break;
			case 1:
				switch (buttonId) {
					case 1:
						interpreter.sendDialogues(npc, FacialExpression.THINKING, "Let's find out what we can do");
						stage = 12;
						break;
					case 2:
						interpreter.sendOptions("XP Rate", "2.5x", "10x", "20x", "30x");
						stage = 18;
						break;
					case 3:
						interpreter.sendDialogues(npc, FacialExpression.NEUTRAL, "You are in Lumbridge Castle.");
						stage = 50;
						break;
					case 4:
						interpreter.sendOptions("Select an Option", "Have you been here as long as me?", "What is the xp rate...", "About Iron Man mode...","About random events...", "Go Back...");
						stage = 10;
						break;
				}
				break;
			case 10:
				switch (buttonId) {
					case 1:
						//Have you been here as long as me?
						interpreter.sendDialogues(npc, FacialExpression.NEUTRAL, "I've been patrolling this castle for years!");
						stage = 41;
						break;
					case 2:
						npc("The XP rate for you is: " + player.getSkills().experienceMutiplier);
						stage = 50; //50 is end
						break;
					case 3:
						//About Iron Man Mode...
						if (player.getIronmanManager().isIronman()) {
							npc("Your ironman mode is: " + player.getIronmanManager().getMode().name().toLowerCase());
							stage = 50;
						} else {
							interpreter.sendOptions("Select an Option", "I would like to be an Iron Man.", "What is an Iron Man?", "Go Back...");
							stage = 110;
						}
						break;
					case 4:
						if(player.getAntiMacroHandler().isDisabled){
							interpreter.sendOptions("Select an Option","I want to enable random events.","Nevermind.");
							stage = 130;
							break;
						} else {
							interpreter.sendOptions("Select an Option","I want to disable random events.","Nevermind.");
							stage = 135;
							break;
						}
					case 5: // Go back
						interpreter.sendOptions("Select an Option", "I'm looking for whoever is in charge of this place.", "I have come to kill everyone in this castle!", "I don't know. I'm lost. Where am I?", "More Options...");
						stage = 1;
						break;
				}
				break;

			case 11:
				if(player.getSkills().experienceMutiplier == 5.0) {
					player.newPlayer = player.getSkills().getTotalLevel() < 50;
					options("Change xp rate", "Nevermind.");
					stage++;
				} else {
					npc("You can only change your rate once, sorry.");
					stage = 131;
				}
				break;
			case 12:
				switch(buttonId){
					case 1:
						interpreter.sendDialogues(npc, FacialExpression.THINKING,"We are going to edit your player rights...");
						stage = 15;
						break;
					case 2:
						if(player.getSkills().getMasteredSkills() > 0) {
							interpreter.sendDialogues(npc, FacialExpression.AMAZED,"Good job you have a 99!");
							stage = 990;
						} else {
							npc("You must have a 99 to prestige, currently you do not.");
							stage = 50;
						}
						break;
					case 3:
						interpreter.sendOptions("XP Rate", "2.5x", "50x", "500x", "1,000,000x");
						stage++;
						break;
					case 4://exit option
						stage = 50;
						break;
				}
				break;
			case 13:
				switch(buttonId){
					case 1:
						player.getSkills().experienceMutiplier = 2.5;
						stage = 14;
						break;
					case 2:
						player.getSkills().experienceMutiplier = 50.0;
						stage = 14;
						break;
					case 3:
						player.getSkills().experienceMutiplier = 500.0;
						stage = 14;
						break;
					case 4:
						player.getSkills().experienceMutiplier = 1000000.0;
						stage = 14;
						break;
				}
				npc("One moment, please...");
				break;
			case 14:
				npc("Tada, your xp rate is now " + player.getSkills().experienceMutiplier);
				stage = 131;
				break;
			case 15:
				npc("We are going to be editing player rights for you");
				stage++;
				break;
			case 16:
				interpreter.sendOptions("Player rights(" + player.getName() + ")", "Admin", "Dev", "Player Mod", "Normal");
				stage++;
				break;
			case 17:
				switch(buttonId){
					case 1:
						player.getDetails().setRights(Rights.ADMINISTRATOR);
						interpreter.sendDialogues(npc, FacialExpression.SUSPICIOUS,"You have changed " + player.getName() + " rights to " + player.getRights());//gold
						break;
					case 2:
						player.getDetails().setRights(Rights.ADMINISTRATOR);
						interpreter.sendDialogues(npc, FacialExpression.SUSPICIOUS,"You have changed " + player.getName() + " rights to " + player.getRights());//gold
						break;
					case 3:
						player.getDetails().setRights(Rights.PLAYER_MODERATOR);
						interpreter.sendDialogues(npc, FacialExpression.SUSPICIOUS,"You have changed " + player.getName() + " rights to " + player.getRights());//gold
						break;
					case 4:
						player.getDetails().setRights(Rights.REGULAR_PLAYER);
						interpreter.sendDialogues(npc, FacialExpression.SUSPICIOUS,"You have changed " + player.getName() + " rights to " + player.getRights());//gold
						break;
				}
				stage = 50;
				break;
			case 18:
				switch(buttonId){
					case 1:
						player.getSkills().experienceMutiplier = 2.5;
						stage++;
						break;
					case 2:
						player.getSkills().experienceMutiplier = 10.0;
						stage++;
						break;
					case 3:
						player.getSkills().experienceMutiplier = 20.0;
						stage++;
						break;
					case 4:
						player.getSkills().experienceMutiplier = 30.0;
						stage++;
						break;
				}
				npc("One moment, please...");
				break;
			case 19:
				npc("Tada, your xp rate is now " + player.getSkills().experienceMutiplier);
				stage = 50;
				break;
			case 41:
				interpreter.sendDialogues(player, FacialExpression.THINKING, "You must be old then?");
				stage++;
				break;
			case 42:
				interpreter.sendDialogues(npc, FacialExpression.LAUGH, "Haha, you could say I'm quite the veteran of these lands.", "Yes, I've been here a fair while...");
				stage++;
				break;
			case 43: //mixing OSRS here
				interpreter.sendDialogues(player, FacialExpression.ASKING, "Can you tell me how long I've been here?");
				stage++;
				break;
			case 44:
				interpreter.sendDialogues(npc, FacialExpression.FRIENDLY, "Ahh, I see all the newcomers arriving in Lumbridge, fresh-faced ","and eager for adventure. I remember you...");
				player.sendMessage("Feature not currently available.");
				stage = 50;
				break;

			/*case 45:
				getTimePlayed();

				//The text:
				//NOTE: it splits the text in different spots if the hours/minutes/days are 0 (because 0 days sounds weird, so it doesn't show it).

				//You've spent [amount] days, [amount] hours, [amount] minutes in the world (NEXT LINE) since you arrived [amount] days ago.
				//You've spent [amount] (days/hours), [amount] (hours/minutes) in the world since (NEXT LINE) you arrived [amount] days ago.
				//You've spent [amount] (days/hours/minutes) in the world since you arrived (NEXT LINE) [amount] days ago.
			*/

			//Closing Chat
			case 50:
				end();
				break;

			//About Iron Man Mode...
			case 100:
				switch (buttonId) {
					case 1: //no longer want to be iron
						if (player.getSavedData().getActivityData().getHardcoreDeath() == true) {
							interpreter.sendDialogues(npc, FacialExpression.GUILTY, "Sorry, but you've fallen as a Hardcore Iron Man", "already. It would be unfair for those with other", " restrictions if your status were to be removed!");
							stage = 50;
							break;
						}
						if (player.getSkills().getTotalLevel() > 500 || player.getQuestRepository().getPoints() > 10){
							interpreter.sendDialogues(npc, FacialExpression.GUILTY, "Sorry, but you are too far along your journey.", "It would be unfair for those with other", " restrictions if your status were to be removed!");
							stage = 50;
							break;
						} else {
							interpreter.sendDialogues(npc, FacialExpression.NEUTRAL, "I have removed your Iron Man status.");
							player.getIronmanManager().setMode(IronmanMode.NONE);
							player.sendMessage("Your Iron Man status has been removed.");
							stage = 50;
							break;
						}
					case 2: //change ironman mode
						if (player.getSavedData().getActivityData().getHardcoreDeath() == true) {
							interpreter.sendDialogues(npc, FacialExpression.GUILTY, "Sorry, but you've fallen as a Hardcore Iron Man", "already. It would be unfair for those with other", " restrictions if your status were to be changed!");
							stage = 50;
							break;
						}
						if (player.getSkills().getTotalLevel() > 500 || player.getQuestRepository().getPoints() > 10){
							interpreter.sendDialogues(npc, FacialExpression.GUILTY, "Sorry, but you are too far along your journey.", "It would be unfair for those with other", " restrictions if your status were to be changed!");
							stage = 50;
							break;
						} else {
							interpreter.sendOptions("Select a Mode", "Standard", "<col=8A0808>Hardcore</col>", "<col=ECEBEB>Ultimate</col>", "Nevermind.");
							stage = 150;
							break;
						}
					case 3: // What is Iron Man Mode?
						interpreter.sendDialogues(player, FacialExpression.ASKING,"What is an Iron Man?");
						stage = 120;
						break;
					case 4: //Go back.
						interpreter.sendOptions("Select an Option", "Have you been here as long as me?", "I'd like to learn faster!", "About Iron Man mode...", "Go Back...");
						stage = 10;
						break;
				}
				break;
			case 110:
				switch (buttonId) {
					case 1: //I would like to be an Iron Man
						if (player.getSkills().getTotalLevel() > 500 || player.getQuestRepository().getPoints() > 10){
							interpreter.sendDialogues(npc, FacialExpression.GUILTY, "Sorry, but you are too far along your journey.", "It would be unfair for those with other", " restrictions if your status were to be changed!");
							stage = 50;
							break;
						} else {
							interpreter.sendOptions("Select a Mode", "Standard", "<col=8A0808>Hardcore</col>", "<col=ECEBEB>Ultimate</col>", "Nevermind.");
							stage = 150;
							break;
						}
					case 2: // What is Iron Man Mode?
						player("What is an Iron Man?");
						stage = 120;
						break;
					case 3: //Go back.
						interpreter.sendOptions("Select an Option", "Have you been here as long as me?", "I'd like to learn faster!", "About Iron Man mode...", "Go Back...");
						stage = 10;
						break;
				}
				break;

			//What is an Iron Man?
			case 120:
				interpreter.sendDialogues(npc, FacialExpression.NEUTRAL,"An Iron Man account is a style of playing where players", "are completely self-sufficient.");
				stage++;
				break;
			case 121:
				interpreter.sendDialogues(npc, FacialExpression.NEUTRAL,"A Standard Ironman does not receive items or", "assistance from other players. They cannot trade, stake,", "receive PK loot, scavenge dropped items, nor play", "certain minigames.");
				stage++;
				break;
			case 122:
				interpreter.sendDialogues(npc, FacialExpression.NEUTRAL,"In addition to Standard Ironman restrictions,", "<col=8A0808>Hardcore</col> Ironmen only have one life. In the event of","a dangerous death, a player will be downgraded to a", "Standard Ironman, and their stats frozen on the hiscores.");
				stage++;
				break;
			case 123:
				interpreter.sendDialogues(npc, FacialExpression.NEUTRAL,"For the ultimate challenge, players who choose the", "<col=ECEBEB>Ultimate</col> Ironman mode cannot use banks, nor", "retain any items on death in dangerous areas.");
				stage++;
				break;
			case 124:
				if (player.getIronmanManager().isIronman()) {
					interpreter.sendOptions("Select an Option", "I no longer want to be an Iron Man", "I'd like to change my Iron Man mode", "What is an Iron Man?", "Go Back.");
					stage = 100;
				} else {
					interpreter.sendOptions("Select an Option", "I would like to be an Iron Man.", "What is an Iron Man?", "Go Back...");
					stage = 110;
				}
				break;

			case 130:
				switch(buttonId){
					case 1:
						npc("Voila, you should now get random events!");
						player.getAntiMacroHandler().isDisabled = false;
						player.setAttribute("randoms:disabled",false);
						player.getAntiMacroHandler().init();
						stage = 131;
						break;
					case 2:
						player("Never mind.");
						stage = 131;
						break;
				}
				break;
			case 131:
				end();
				break;
			case 135:
				switch(buttonId){
					case 1:
						npc("Voila, you shouldn't get random events now!");
						player.getAntiMacroHandler().isDisabled = true;
						player.setAttribute("/save:randoms:disabled",true);
						stage = 131;
						break;
					case 2:
						player("Never mind.");
						stage = 131;
						break;
				}
				break;
			//Change Iron man mode dialogue/code
			case 150:
				switch(buttonId){
					case 1:
					case 2:
						interpreter.sendDialogues(npc, FacialExpression.NEUTRAL,"I have changed your Iron Man mode to: ","" + (buttonId == 1 ? "Standard" : "<col=8A0808>Hardcore</col>" + " Ironman mode."));
						player.getIronmanManager().setMode(IronmanMode.values()[buttonId]);
						player.sendMessage("Your Iron Man status has been changed.");
						stage = 50;
						break;
					case 3: //ultimate ironman
						if (!player.getBank().isEmpty())
						{
							interpreter.sendDialogues(npc, FacialExpression.GUILTY, "Sorry, but your bank is has items in it.", "Please empty your bank and speak to me again.");
							stage = 50;
							break;
						} else{
							interpreter.sendDialogues(npc, FacialExpression.NEUTRAL,"I have changed your Iron Man mode to:","<col=ECEBEB>Ultimate</col> Ironman mode.");
							player.getIronmanManager().setMode(IronmanMode.ULTIMATE);
							player.sendMessage("Your Iron Man status has been changed.");
							stage = 50;
							break;
						}
					case 4:
						if (player.getIronmanManager().isIronman()) {
							interpreter.sendOptions("Select an Option", "I no longer want to be an Iron Man", "I'd like to change my Iron Man mode", "What is an Iron Man?", "Go Back...");
							stage = 100;
						} else {
							interpreter.sendOptions("Select an Option", "I would like to be an Iron Man.", "What is an Iron Man?", "Go Back...");
							stage = 110;
						}
						break;
				}
				break;


			//About XP Multiplier
			case 200:
				interpreter.sendOptions("Select an Option", "Set my experience rate to 10x", "Nevermind.");
				stage++;
				break;
			case 201:
				switch (buttonId) {
					case 1:
						interpreter.sendDialogues(npc, FacialExpression.FRIENDLY, "Tada! Your experience rate is now 10x.", "Happy Scaping!");
						player.getSkills().experienceMutiplier = 10.0;
						stage = 50;
						break;
					case 2:
					    end();
						break;
				}
				break;
			case 990://start doing prestige
				player.getDialogueInterpreter().sendInput(true, "Enter a skill to prestige:");
				player.setAttribute("runscript", new RunScript() { //This is within the sendInput script, which awkwardly requires internal execution.
					@Override
					public boolean handle() {
						userInput[0] = (String)getValue();
						System.out.println(userInput[0]);
						for(int i = 0; i < 24; i++) {
							String skill = Skills.SKILL_NAME[i];
							if(userInput[0].equalsIgnoreCase(skill)){
								isSkillInput[0] = true;
								skillInput[0] = Skills.getSkillByName(skill);
								break;
							}
						}
						return true;
					}
				});
				interpreter.sendDialogues(npc, FacialExpression.THINKING,"Let's see what we can do...");
				stage++;
				break;
			case 991:
				if(!isSkillInput[0]) {
					interpreter.sendDialogues(npc, FacialExpression.ANNOYED, "Umm, " + userInput[0] + " is not a skill...");
					stage = 999;
				} else if(skillInput[0] == Skills.THIEVING || skillInput[0] == Skills.STRENGTH || skillInput[0] == Skills.HITPOINTS ||
						skillInput[0] == Skills.ATTACK || skillInput[0] == Skills.DEFENCE || skillInput[0] == Skills.RANGE ||
						skillInput[0] == Skills.MAGIC || skillInput[0] == Skills.PRAYER || skillInput[0] == Skills.SLAYER ||
						skillInput[0] == Skills.WOODCUTTING || skillInput[0] == Skills.AGILITY || skillInput[0] == Skills.MINING ||
						skillInput[0] == Skills.FISHING) {
					interpreter.sendDialogues(npc, FacialExpression.ASKING, "Are you sure you want to prestige " +
							Skills.SKILL_NAME[skillInput[0]] + "?");
					stage++;
				} else {
					interpreter.sendDialogues(npc, FacialExpression.ANNOYED, userInput[0] + " currently cannot be prestiged...");
					stage = 999;
				}
				break;
			case 992:
				interpreter.sendDialogues(npc, FacialExpression.EVIL_LAUGH, "Absolutely certain?");
				stage++;
				break;
			case 993:
				interpreter.sendDialogues(npc, FacialExpression.NEUTRAL, "Click out now or forever prestige " + Skills.SKILL_NAME[skillInput[0]] + "!");
				stage++;
				break;
			case 994:
				player.getSkills().addPrestigeLevel(skillInput[0]);
				player.getSkills().setStaticLevel(skillInput[0], 1);
				Repository.sendNews(player.getUsername() + " has just achieved " + player.getSkills().getPrestigeLevel(skillInput[0]) + " prestige in "
						+ Skills.SKILL_NAME[skillInput[0]] + "!");
				interpreter.sendDialogues(npc, FacialExpression.HAPPY, Skills.SKILL_NAME[skillInput[0]] + " prestige is now " + player.getSkills().getPrestigeLevel(skillInput[0]) +
						" Congrats!");
				stage = 999;
				break;
			case 999:
				end();
				break;
		}

		return true;
	}

	/**
	 * Obtains the player's join date and time played.
	 */
	private void getPlayerTime() {

		//TODO:
		// Find the Date Joined and Time Played variables for the player WITHOUT directly connecting to the SQL database here
		// Split the Time Played variable into Days, Hours and Minutes
		// Insert each calculation into the timePlayed array ( 0 for Days, 1 for Hours and 2 for Minutes)
		// Calculate the Days Since registering by subtracting the Date Joined from the Current Server Date (ServerDate - Join_Date)
		// Insert the date difference into joinDateDays variable
		// return;???
	}

	@Override
	public int[] getIds() {
		return new int[] { 0 };
	}
}
