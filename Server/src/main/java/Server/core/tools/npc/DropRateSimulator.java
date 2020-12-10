/*
package org.crandor.tools.npc;

import org.crandor.cache.def.impl.ItemDefinition;
import org.crandor.game.node.entity.npc.drop.DropTables;
import org.crandor.game.node.item.Item;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.List;

public class DropRateSimulator implements ActionListener{
	static JTextField id,amt;
	static JTextArea output;
	static JButton doIt;
	Object[][] data;

	public void DropSimulator(){
		JFrame frame = new JFrame("WarByCode Drop Simulator");
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setSize(700,700);
		JPanel panel = new JPanel();
		JLabel idLabel = new JLabel("Enter NPC ID:");
		JLabel amtLabel = new JLabel("How many?");
		id = new JTextField(8);
		amt = new JTextField(8);
		JButton doIt = new JButton("Simulate Drops");
		panel.add(idLabel);
		panel.add(id);
		panel.add(amtLabel);
		panel.add(amt);
		panel.add(doIt);
		String[] columnNames = {"Item ID", "Amount"};
		JTable table = new JTable(data,columnNames);
		JScrollPane scrollPane = new JScrollPane(table);
		frame.getContentPane().add(BorderLayout.NORTH,panel);
		frame.getContentPane().add(BorderLayout.CENTER,scrollPane);
		frame.setVisible(true);
		doIt.addActionListener(this);
		doIt.setActionCommand("simulate");
	}
	@Override
	public void actionPerformed(ActionEvent actionEvent) {
		if ("simulate".equals(actionEvent.getActionCommand())) {
			int npc_id = Integer.parseInt(id.getText());
			int amount = Integer.parseInt(amt.getText());
			DropTables table = DropTables.forId(npc_id);
			if (table == null) {
				System.out.println("Unknown table for npc id: " + npc_id);
			}
			for (int i = 0; i < amount; i++) {
				table.getDrops().forEach(drop -> {
					int id = drop.getId();
					output.append(drop.getId() + " x" + drop.getAmount() + "\n");
				});
			}
		}
	}

	public static void main(String[] args) {
		new DropRateSimulator().DropSimulator();
	}
}*/
