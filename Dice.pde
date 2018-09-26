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
		fill(0);
		ellipse(110, 120, dotSize, dotSize);
		ellipse(175, 125, dotSize, dotSize);
		ellipse(125, 175, dotSize, dotSize);
		ellipse(175, 175, dotSize, dotSize);
		ellipse(175, 150, dotSize, dotSize);
		ellipse(125, 150, dotSize, dotSize);
	}
}

/*
void oneDot()
{
	ellipse(150,150,dotSize,dotSize);
}

void twoDot()
{
	ellipse(125,150,dotSize,dotSize);
	ellipse(175,150,dotSize,dotSize);
}
void threeDot()
{
	ellipse(150,150,dotSize,dotSize);
	ellipse(200,150,dotSize,dotSize);
	ellipse(100,150,dotSize,dotSize);
}

void fourDot()
{
	ellipse(125, 125, dotSize, dotSize);
	ellipse(175, 125, dotSize, dotSize);
	ellipse(125, 175, dotSize, dotSize);
	ellipse(175, 175, dotSize, dotSize);
}

void fiveDot()
{
	ellipse(125, 125, dotSize, dotSize);
	ellipse(175, 125, dotSize, dotSize);
	ellipse(125, 175, dotSize, dotSize);
	ellipse(175, 175, dotSize, dotSize);
	ellipse(150, 150, dotSize, dotSize);
}

for(int y = 0; y <= 2; y++)
		{
			for(int x = 0; x <= )
			{
				ellipse(x,y,dotSize,dotSize);
			}
		}
*/