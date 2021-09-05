public class Laptop extends Computer {
	private int battery;
	
	public Laptop(int resX, int resY, int battery) {
		super(resX, resY);
		this.battery = battery;
	}
	
	public void decBattery() {
		this.battery--;
	}
	
	public void decBattery(int dec) {
		this.battery -= dec;
	}
	
	public void chargeBattery() {
		this.battery++;
	}
	
	public void chargeBattery(int charge) {
		this.battery += charge;
	}
	
	public int getBattery() {
		return this.battery;
	}
	
	public String toString() {
		return ("Resolution: " + this.getRes() + " Battery: " + this.getBattery());
	}
}
