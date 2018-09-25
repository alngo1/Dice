Die one;
int dotSize = 30;

void setup()
{
	size(300, 300);
	noLoop();
}
void draw()
{
	background(197);
	one = new Die(75, 75);
	one.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, size, value;
	
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		size = 150;
	}
	void roll()
	{
		//your code here
		value = 2;
	}
	void show()
	{
		//your code here
		fill(#FFFFFF);
		rect(myX, myY, size, size);
		for(int x = 150; x <= value; x++)
		{
			fill(0);
			ellipse(x,150,dotSize,dotSize);
		}
	}
}
