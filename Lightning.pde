int startx = 0;
int starty = 150;
int endx = 0;
int endy = 150;
int r = 0;
int b = 0;
int g = 0;

int changex = 1;
int changey = 1;

void setup()
{
  frameRate(30);
  size(500,500);
  strokeWeight(5);
  background(255,255,255);
}
void draw()
{	
	rect(50, 50, 400, 400);

	//background(0);
	stroke(r,g,b);
	endx = startx + changex * (int)(Math.random()*9 + changex*(- 9));
	endy = starty + changey * (int)(Math.random()*9 + changey*(-9));
	line(startx, starty, endx,endy);
	startx = endx;
	starty = endy;

	if(startx < 50)
		changex *= -1;
	if(startx > 450)
		changex *= -1;
	if(starty < 50)
		changey *= -1;
	if(starty > 450)
		changey *= -1;

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

