public aspect Test_case_Logger{
    
	//pointcut definition for main
	pointcut mainmethod() : execution(void Test.main(String[]));
	
	//fancy formatting
	private static final String TEXT_RESET = "\u001B[0m";
	private static final String TEXT_GREEN = "\u001B[32m";
	private static final String TEXT_RED = "\u001B[31m";
	private static final String TEXT_YELLOW = "\u001B[33m";
	private static final String TEXT_BLUE = "\u001B[34m";


	//log test case start
	before() : mainmethod(){
		System.out.println(TEXT_GREEN + "Test case began execution\n" + TEXT_RESET);
	}
	
	//display any errors to console
	void around() : mainmethod(){
		try {
			proceed();
		}
		catch(Exception e) {
			System.out.println(TEXT_RED + "Encountered the following error during execution:");
			e.printStackTrace();
			System.out.print(TEXT_RESET);
		}
	}
	//log test case finish
	after() returning : mainmethod(){
		System.out.println(TEXT_GREEN + "\nTest case finished execution" + TEXT_RESET);
	}
	
	
	//decorate Laptop.toString() and Computer.toString() print calls with color
	
	//computer becomes yellow
	pointcut computer_tostring () : execution(String Computer.toString());

	String around (): computer_tostring(){
		String orig_string = proceed();
		return TEXT_YELLOW + orig_string + TEXT_RESET;
	}
	
	
	pointcut laptop_tostring () : execution(String Laptop.toString());
	
	//laptop becomes blue
	String around (): laptop_tostring(){
		String orig_string = proceed();
		return TEXT_BLUE + orig_string + TEXT_RESET;
	}
	


}