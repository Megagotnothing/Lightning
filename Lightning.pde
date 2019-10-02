int startx = 0;
int starty = 150;
int endx = 0;
int endy = 150;
int r = 0;
int b = 0;
int g = 0;

int changex = 20;
int changey = 20;

void setup()
{
  frameRate(10000);
  size(500,500);
  strokeWeight(5);
  background(255,255,255);

}
void draw()
{	
	//rect(50, 50, 400, 400);

	//background(0);
	stroke(r,g,b);
	endx = startx +  (int)(Math.random()* changex - (changex/4));
	endy = starty + (int)(Math.random()* changey - (changey/4));
	line(startx, starty, endx,endy);
	startx = endx;
	starty = endy;

	/*
	if(startx < 0)
		changex = changex * -1;
		//startx = 0;
	if(startx > 500)
		changex = changex * -1;
		//startx = 500;
	if(starty < 100)
		changey = changey * -1;
		//starty = 0;
	if(starty > 500)
		changey = changey * -1;
		//starty = 500;	
*/
	
}
void mousePressed()
{
	starty = 250;
	startx = (int)(Math.random()*500);
	endy = 250;
	endx = (int)(Math.random()*500);

	r = (int)(Math.random() * 255);
	g = (int)(Math.random() * 255);
	b = (int)(Math.random() * 255);
}

