int startx = 0;
int starty = 150;
int endx = 0;
int endy = 150;

void setup()
{
  frameRate(900);
  size(500,500);
  strokeWeight(5);
  background(255,255,255);
}
void draw()
{
	stroke((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
	endx = startx + (int)(Math.random()*9);
	endy = starty + (int)(Math.random()*18 - 9);
	line(startx, starty, endx,endy);
	startx = endx;
	starty = endy;
}
void mousePressed()
{
	startx = 0;
	starty = 150;
	endx = 0;
	endy = 150;
}

