void setup()
{
	size(400,400);
	noLoop();

}
void draw()
{
	background(0,204,102);

		Die one= new Die(200,200);
		
	one.show();

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int dots, myX, myY; 
	Die(int x, int y) //constructor
	{
		myX= x;
		myY= y;
		dots= 1;
	}
	//void roll()
	//{
		 
	//}
	void show()
	{
		fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		rect( myX, myY, 50, 50, 20);
		fill(0);
		if (dots == 1) 
			{ellipse(myX + 25, myY+ 25, 10,10);
			}
	}
}
