public aspect ComputerChecker
{
	before(Computer c): this(c) &&  call(void Computer.setRes(int,int))
	{
		if (c.getResX() <= 0 || c.getResY() <= 0)
		{
			System.out.println("Computer.setRes(x,y) unsuccessful: zero or negative resolutions\n");
		}
		else
		{
			System.out.println("Computer.setRes(x,y) successful: resolution has been successfully changed\n");
		}

	}

	before(Computer c): this(c) && call(String Computer.getRes())
	{
		if (c.getResX() <= 0 || c.getResY() <=0)
		{
			System.out.println("Computer.getRes() unsuccessful: invalid resolution\n");
		}
		else
		{
			System.out.println("Computer.getRes() successful: resolution has been successfully changed\n");
		}


	}

}
	

