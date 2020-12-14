package org.runite;

import org.runite.jagex.GameShell;
import org.runite.jagex.Signlink;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import static org.runite.jagex.Signlink.cacheDirectory;

/**
 * Handles the launching of our Game Client.
 * @author Keldagrim Development Team
 *
 */

class MyRunnable implements Runnable {

	private File file;

	public MyRunnable(File file) {
		this.file = file;
	}

	public void run() {
		Method method = null;
		try {
			method = URLClassLoader.class.getDeclaredMethod("addURL", new Class[]{URL.class});

		method.setAccessible(true);
		method.invoke(ClassLoader.getSystemClassLoader(), new Object[]{file.toURI().toURL()});
		} catch (NoSuchMethodException | MalformedURLException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
	}
}


/*

NOTICE: THIS IS THE LIVESERVER CLIENT. For development purposes, use GameLaunch.java instead!!!

 */
public class Client {

	public static final String CONF_FILE="client.conf";

	public static String PUBLIC_IP_ADDRESS;

	/**
	 * The game settings. This is to get the client code source on update, these settings
	 */
	public static GameSetting SETTINGS = new GameSetting("WarByCode", "127.0.0.1", 3, "live", false);


	/**
	 * The main method.
	 r @param args the arguments casted on runtime.
     r_game

	 */
	public static void main(String[]args) throws Exception {
		//move HD Libs for Windows
		Path pathHD = Paths.get(System.getProperty("user.home"), Signlink.cacheDirectory, "clientlibs.jar");
		InputStream libsHDPath =  (Client.class.getClassLoader().getResource("clientlibs.jar")).openStream();
		Files.copy(libsHDPath, pathHD, StandardCopyOption.REPLACE_EXISTING);
		MyRunnable myRunnable = new MyRunnable(pathHD.toFile());
		Thread t = new Thread(myRunnable);
		t.start();


		try {
			//This is the actual IP Address
			PUBLIC_IP_ADDRESS = "72.191.29.70";
		} catch (Exception e){
			System.out.println("Can't find config file " + CONF_FILE + " defaulting to IP 127.0.0.1");
			PUBLIC_IP_ADDRESS = "127.0.0.1";
		}
		System.out.println("Running liveserver client");
		Configurations.LOCAL_SERVER = false;
		Configurations.LOCAL_MS = false;
		Configurations.MS_IP = Configurations.LOCAL_MS ? "127.0.0.1" : PUBLIC_IP_ADDRESS; //Needs to be done because of order it's otherwise set

		for (int i = 0; i < args.length; i++) {
			String[] cmd = args[i].split("=");
			switch (cmd[0]) {
			case "ip":
				SETTINGS.setIp(cmd[1]);
				break;
			case "world":
				SETTINGS.setWorld(Integer.parseInt(cmd[1]));
				break;
			}
		}
		/**
		 * Launches the client
		 */
		GameShell.launchDesktop();
	}
	
}
