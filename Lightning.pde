int startx = 0;
int starty = 150;
int endx = 0;
int endy = 150;
int r = 0;
int b = 0;
int g = 0;

void setup()
{
  frameRate(30);
  size(500,500);
  strokeWeight(5);
  background(255,255,255);
}
void draw()
{	
	background(0);
	stroke(r,g,b);
	endx = startx + (int)(Math.random()*18 - 9);
	endy = starty + (int)(Math.random()*9);
	line(startx, starty, endx,endy);
	startx = endx;
	starty = endy;
}
void mousePressed()
{
	starty = 0;
	startx = (int)(Math.random()*500);
	endy = 0;
	endx = (int)(Math.random()*500);

	r = (int)(Math.random() * 255);
	g = (int)(Math.random() * 255);
	b = (int)(Math.random() * 255);
}

