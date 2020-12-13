package plugin;

public class Getlineonce {
    static int[] linesRun = new int[0];

    public Getlineonce() {
        boolean lineRan = false;
        int line = Thread.currentThread().getStackTrace()[2].getLineNumber();
        for(int i = 0; i < linesRun.length; i++) {
            if(line == linesRun[i]) {
                lineRan = true; //Dont print
            }
        }

        if(!lineRan) {
            add(line);
            System.out.println(line + " ran!");
        }

    }

    public void add(int line) {
        int newSize = linesRun.length+1;
        int[] linesRunBuff = new int[newSize];
        for(int i = 0; i < newSize-1; i++) {
            linesRunBuff[i] = linesRun[i];
        }
        linesRunBuff[newSize-1] = line;

    }

}
