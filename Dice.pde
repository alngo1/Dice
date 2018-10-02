Die one;
int sum = 0;

void setup()
{
	size(450, 400);
	noLoop();
}
void draw()
{
	background(197);
        for(int j = 0; j < 180; j+=60)
        {
        	for(int i = 0; i < 150; i+=60)
        	{
        		one = new Die(i, j, 50, 10);
        		sum+=one.value;
        		one.show();
        	}
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
	int myX, myY, size, value, dotSize;
	
	Die(int x, int y, int z, int s) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		size = z;
		dotSize = s;
		value = (int)(Math.random()*6)+1;
	}
	void roll()
	{
		//your code here
		text("Total: " + sum, 0, 300);

	}
	void show()
	{
		//your code here

		fill(#FFFFFF);
		rect(myX, myY, size, size);
		fill(0);
		if(value == 1)
		{
			ellipse(myX + size/2, myY + size/2,dotSize,dotSize);
		}else if(value == 2)
		{
			ellipse(myX + size/2 - dotSize, myY + size/2, dotSize, dotSize);
			ellipse(myX + size/2+ dotSize, myY + size/2, dotSize, dotSize);
		}else if(value == 3)
		{
			ellipse(myX + size/2,myY + size/2,dotSize,dotSize);
			ellipse(myX + size/2 + dotSize - 5,myY + size/2 -dotSize,dotSize,dotSize);
			ellipse(myX + size/2 - dotSize + 5,myY + size/2 +dotSize,dotSize,dotSize);
		}else if(value == 4)
		{
			ellipse(myX + size/2 - dotSize, myY + size/2 - dotSize, dotSize, dotSize);
			ellipse(myX + size/2 + dotSize, myY + size/2 - dotSize, dotSize, dotSize);
			ellipse(myX + size/2 - dotSize, myY + size/2 + dotSize, dotSize, dotSize);
			ellipse(myX + size/2 + dotSize, myY + size/2 + dotSize, dotSize, dotSize);
		}else if(value == 5)
		{
			ellipse(myX + size/2 - dotSize, myY + size/2 - dotSize, dotSize, dotSize);
			ellipse(myX + size/2 + dotSize, myY + size/2 - dotSize, dotSize, dotSize);
			ellipse(myX + size/2 - dotSize, myY + size/2 + dotSize, dotSize, dotSize);
			ellipse(myX + size/2 + dotSize, myY + size/2 + dotSize, dotSize, dotSize);
			ellipse(myX + size/2, myY + size/2, dotSize, dotSize);
		}else
		{
			ellipse(myX + size/2 - dotSize, myY + size/2 - dotSize, dotSize, dotSize);
			ellipse(myX + size/2 + dotSize, myY + size/2 - dotSize, dotSize, dotSize);
			ellipse(myX + size/2 - dotSize, myY + size/2 + dotSize, dotSize, dotSize);
			ellipse(myX + size/2 + dotSize, myY + size/2 + dotSize, dotSize, dotSize);
			ellipse(myX + size/2 + dotSize, myY + size/2, dotSize, dotSize);
			ellipse(myX + size/2 - dotSize, myY + size/2, dotSize, dotSize);
		}
	}

}
