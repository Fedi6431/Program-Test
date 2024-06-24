try {
    Runtime rt = Runtime.getRuntime();
    
    // Execute the command "su - test"
    Process pr = rt.exec(new String[] { "su", "-", "test" });
    String line;
    BufferedReader input = new BufferedReader(new InputStreamReader(pr.getInputStream()));
    
    while ((line = input.readLine()) != null) {
        System.out.println(line);
    }
    
    int exitVal = pr.waitFor();
    System.out.println("Exited with error code " + exitVal);
    
    // Execute the command "whoami"
    pr = rt.exec("whoami");
    input = new BufferedReader(new InputStreamReader(pr.getInputStream()));
    
    while ((line = input.readLine()) != null) {
        System.out.println(line);
    }
    
    exitVal = pr.waitFor();
    System.out.println("Exited with error code " + exitVal);
} catch (Exception e) {
    System.out.println(e.toString());
    e.printStackTrace();
}
