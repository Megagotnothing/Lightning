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
  frameRate(40);
  size(500,500);
  strokeWeight(5);
  background(255,255,255);

}
void draw()
{	fill(255,255,255,5);
	stroke(0);
	rect(125, 125, 250, 250, 0);
	stroke(r,g,b);
	endx = startx +  (int)(Math.random()* changex);
	endy = starty + (int)(Math.random()* changey);
	line(startx, starty, endx, endy);
	fill(255);
	noStroke();
	fill(200,200,200);
	rect(0,376,500,500);
	rect(0,0,500,124);
	rect(0,0,124,500);
	rect(376,0,500,500);

	startx = endx;
	starty = endy;

	fill(255,255,255, 100);
	
	if(endx <= 125)
		changex = changex * -1;
		endx = endx + 100;
	if(endx >= 375)
		changex = changex * -1;
		endx = endx - 100;
	if(endy <= 125)
		changey = changey * -1;
		endy = endy + 100;
	if(endy >= 375)
		changey = changey * -1;
		endy = endy - 100;	
	
	
}
void mousePressed()
{	
	background(255, 10000);
	starty = 250;
	startx = (int)(Math.random()*250 + 125);
	endy = 250;
	endx = (int)(Math.random()*250-125);

	r = (int)(Math.random() * 255);
	g = (int)(Math.random() * 255);
	b = (int)(Math.random() * 255);
}

