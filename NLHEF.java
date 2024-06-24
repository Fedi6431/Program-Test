import java.io.BufferedReader;
import java.io.InputStreamReader;

public class CommandExecution {
    public static void main(String[] args) {
        try {
            Process cmd_process = Runtime.getRuntime().exec(new String[]{"pkg", "update"});
            String line;
            BufferedReader input = new BufferedReader(new InputStreamReader(cmd_process.getInputStream()));

            while ((line = input.readLine()) != null) {
                System.out.println(line);
            }

            Process cmd_process2 = Runtime.getRuntime().exec(new String[]{"pkg", "update"});
            input = new BufferedReader(new InputStreamReader(cmd_process2.getInputStream()));

            while ((line = input.readLine()) != null) {
                System.out.println(line);
            }
        } catch (Exception e) {
            System.out.println(e.toString());
            e.printStackTrace();
        }
    }
}
