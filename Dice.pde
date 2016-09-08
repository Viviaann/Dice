PImage back;
void setup()
{
	size(400,400);
	noLoop();
	back= loadImage("back.jpg");
}
void draw()
{
		image(back,0,0,width,height);
		Die one= new Die(200,200);
		
	one.show();

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int dots, myX, myY,cX,cY; 
	Die(int x, int y) //constructor
	{
		myX= x;
		myY= y;
		//cX= 50;
		//cY=50;
		dots= (int)(Math.random()*7);
	}
	//void roll()
	//{
		 
	//}
	void show()
	{
		stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		strokeWeight(5);
		fill(255,255,255);
		rect( myX, myY, 50, 50, 20);
	
		if (dots == 1) 
			{
				fill(0,0,0);
				ellipse(myX + 50/2, myY+ 50/2, 5,5);
			}
		if (dots == 2)
		{
			fill(0,0,0);
			ellipse (myX + 50/3,myY+50/3,5,5);
			ellipse (myX + 100/3,myY+ 100/3,5,5);
		}
		if (dots == 3)
		{
			fill(0,0,0);
			ellipse (myX + 50/4,myY+50/4,5,5);
			ellipse (myX + 100/4,myY+ 100/4,5,5);
			ellipse (myX + 90/4,myY+ 150/4,5,5);

		}
	}
}
