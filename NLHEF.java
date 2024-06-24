import java.io.BufferedReader;
import java.io.InputStreamReader;

public class CommandExecution {
    public static void main(String[] args) {
        try {
            
            Process cmd_process = Runtime.getRuntime().exec(new String[]{"apt", " update"});
            String line;
            BufferedReader input = new BufferedReader(new InputStreamReader(pr.getInputStream()));

            while ((line = input.readLine()) != null) {
                System.out.println(line);
            }

            Process cmd_process = Runtime.getRuntime().exec(new String[]{"pkg update"});
            input = new BufferedReader(new InputStreamReader(Runtime.getRuntime().getInputStream()));

            while ((line = input.readLine()) != null) {
                System.out.println(line);
            }
        } catch (Exception e) {
            System.out.println(e.toString());
            e.printStackTrace();
        }
    }
}
