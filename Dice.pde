Die one;
int dotSize = 30;
int sum = 0;

void setup()
{
	size(1350, 400);
	noLoop();
}
void draw()
{
	background(197);
	for(int i = 0; i < 1350; i+=150)
	{
		one = new Die(i, 0, 150);
		sum+=one.value;
		System.out.println(one.value);
		one.show();
	}
	one.roll();
}
void mousePressed()
{
	sum = 0;
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, size, value;
	
	Die(int x, int y, int z) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		size = z;
		value = (int)(Math.random()*6)+1;
	}
	void roll()
	{
		//your code here
		text("Total: " + sum, 300, 300);

	}
	void show()
	{
		//your code here

		fill(#FFFFFF);
		rect(myX, myY, size, size);
		fill(0);
		if(value == 1)
		{
			ellipse(myX + size/2, myY + 75,dotSize,dotSize);
		}else if(value == 2)
		{
			ellipse(myX + 50, myY + 75, dotSize, dotSize);
			ellipse(myX + 100, myY + 75, dotSize, dotSize);
		}else if(value == 3)
		{
			ellipse(myX + 75,myY + 75,dotSize,dotSize);
			ellipse(myX + 125,myY + 75,dotSize,dotSize);
			ellipse(myX + 25,myY + 75,dotSize,dotSize);
		}else if(value == 4)
		{
			ellipse(myX + 50, myY + 50, dotSize, dotSize);
			ellipse(myX + 100, myY + 50, dotSize, dotSize);
			ellipse(myX + 50, myY + 100, dotSize, dotSize);
			ellipse(myX + 100, myY + 100, dotSize, dotSize);
		}else if(value == 5)
		{
			ellipse(myX + 50, myY + 50, dotSize, dotSize);
			ellipse(myX + 100, myY + 50, dotSize, dotSize);
			ellipse(myX + 50, myY + 100, dotSize, dotSize);
			ellipse(myX + 100, myY + 100, dotSize, dotSize);
			ellipse(myX + 75, myY + 75, dotSize, dotSize);
		}else
		{
			ellipse(myX + 45, myY + 45, dotSize, dotSize);
			ellipse(myX + 105, myY + 45, dotSize, dotSize);
			ellipse(myX + 45, myY + 105, dotSize, dotSize);
			ellipse(myX + 105, myY + 105, dotSize, dotSize);
			ellipse(myX + 105, myY + 75, dotSize, dotSize);
			ellipse(myX + 45, myY + 75, dotSize, dotSize);
		}
	}

}