public class Computer {
	private int resX;
	private int resY;
	
	public Computer(int resX, int resY) {
		this.resX = resX;
		this.resY = resY;
	}

	public int getResX()
	{
		return this.resX;
	}

	public int getResY()
	{
		return this.resY;
	}
	
	public void setRes(int resX, int resY) {
		this.resX = resX;
		this.resY = resY;
	}
	
	public String getRes() {
		return (resX + "x" + resY);
	}
	
	public String toString() {
		return ("Resolution: " + this.getRes());
	}
}
