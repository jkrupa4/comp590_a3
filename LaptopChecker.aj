public aspect LaptopChecker {
	void around(Laptop l): this(l) && execution(void Laptop.decBattery()) {
		if (l.getBattery() == 0) {
			System.out.println("Laptop.decBattery() unsuccessful: battery is already fully discharged\n");
		} else {
			proceed(l);
			
			System.out.println("Laptop.decBattery() executed successfully\n");
		}
	}
	
	void around(Laptop l, int b): this(l) && execution(void Laptop.decBattery(int)) && args(b) {
		if (l.getBattery() - b < 0) {
			System.out.println("Arg (" + b + ") > battery charge (" + l.getBattery() + ") modified to fully discharge battery");
			b = l.getBattery();
		}
		
		proceed(l, b);
		
		System.out.println("Laptop.decBattery(int dec) executed successfully\n");
	}
	
	void around(Laptop l): this(l) && execution(void Laptop.chargeBattery()) {
		if (l.getBattery() == 100) {
			System.out.println("Laptop.chargeBattery() unsuccessful: battery is already fully charged\n");
		} else {
			proceed(l);
			
			System.out.println("Laptop.chargeBattery() executed successfully\n");
		}
	}
	
	void around(Laptop l, int c): this(l) && execution(void Laptop.chargeBattery(int)) && args(c) {
		if (l.getBattery() + c > 100) {
			System.out.println("Arg (" + c + ") + battery charge (" + l.getBattery() + ") > 100 modified to fully charge battery");
			c = 100 - l.getBattery();
		}
		
		proceed(l, c);
		
		System.out.println("Laptop.chargeBattery(int charge) executed successfully\n");
	}
}