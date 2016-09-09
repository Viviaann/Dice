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
	for (int x=20; x<350; x= x+ 60)
	{
		Die one= new Die(x,200);
		one.show();
		one.roll();
	for (int y=20; y<350; y= y+ 60)
	{
		Die one= new Die(200,y);
		one.show();
		one.roll();
	}		
	

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
		dots= (int)((Math.random()*7+1));
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
	}
	void roll()
	{
		if (dots == 1) 
		{
				fill(0,0,0);
				ellipse(myX + 50/2, myY+ 50/2, 5,5);
		}
		else if (dots == 2)
		{
			fill(0,0,0);
			ellipse (myX + 50/3,myY+50/3,5,5);
			ellipse (myX + 100/3,myY+ 100/3,5,5);
		}
		else if (dots == 3)
		{
			fill(0,0,0);
			ellipse (myX + 70/4,myY+80/4,5,5);
			ellipse (myX + 100/4,myY+ 150/4,5,5);
			ellipse (myX + 130/4,myY+  80/4,5,5);

		}
	}	
}
