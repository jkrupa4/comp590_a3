public class Test {
	public static void main(String[] args) throws Exception {
		Computer comp = new Computer(1920, 1080);
		Laptop lapOne = new Laptop(1920, 1080, 100);
		Laptop lapTwo = new Laptop(1600, 900, 75);
		
		System.out.println(comp.toString());
		System.out.println(lapOne.toString());
		System.out.println(lapTwo.toString() + "\n");
		
		comp.setRes(2160, 1440);
		lapOne.decBattery();
		lapTwo.decBattery(25);
		
		System.out.println(comp.toString());
		System.out.println(lapOne.toString());
		System.out.println(lapTwo.toString() + "\n");
		
		
		lapOne.chargeBattery();
		lapTwo.chargeBattery(50);
		
		System.out.println(comp.toString());
		System.out.println(lapOne.toString());
		System.out.println(lapTwo.toString() + "\n");
		
		lapOne.decBattery(101);
		lapTwo.chargeBattery();
		System.out.println(comp.toString());
		System.out.println(lapOne.toString());
		System.out.println(lapTwo.toString() + "\n");
		
		if(true) {
			throw new Exception("Test Exception");
		}
		
	}
}
