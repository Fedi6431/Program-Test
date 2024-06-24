import java.io.BufferedReader;
import java.io.InputStreamReader;

public class CommandExecution {
    public static void main(String[] args) {
        try {
            Runtime rt = Runtime.getRuntime();
            Process pr = rt.exec("apt update");
            String line;
            BufferedReader input = new BufferedReader(new InputStreamReader(pr.getInputStream()));

            while ((line = input.readLine()) != null) {
                System.out.println(line);
            }

            pr = rt.exec("whoami");
            input = new BufferedReader(new InputStreamReader(pr.getInputStream()));

            while ((line = input.readLine()) != null) {
                System.out.println(line);
            }

            int exitVal = pr.waitFor();
            System.out.println("Exited with error code " + exitVal);
        } catch (Exception e) {
            System.out.println(e.toString());
            e.printStackTrace();
        }
    }
}
