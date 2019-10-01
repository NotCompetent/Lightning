
int startX = 0;
int startY = 250;
int endX = 0;
int endY = 250;
void setup()
{
  size(300,500);
  strokeWeight(1);
  background(0);
  stroke(255);
  drawPhone();
}
void draw()
{
	
	stroke(255,255,255);
	startY = (int)(Math.random()*400+50);
	while(endX<275){
		endX = startX + (int)(Math.random()*9);
		endY = startY + (int)(Math.random()*18);
		if(endY > 9){
			endY = endY - 9;
		}
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}

}
void mousePressed()
{
	startX = 0;
	startY = 250;
	endX = 0;
	endY = 250;
}

void drawPhone()
{
	//sides
		fill(255,255,255);
		stroke(255,255,255);
		ellipse(25,25,50,50);
		ellipse(275,25,50,50);
		ellipse(25,475,50,50);
		ellipse(275,475,50,50);
		rect(25,0,250,50);
		rect(25,450,250,50);
		rect(0,25,50,450);
		rect(250,25,50,450);
	//button
		stroke(192,192,192);
		ellipse(150,475,35,35);
	//speaker
		stroke(0,0,0);
		fill(0,0,0);
		ellipse(125,25,5,5);
		ellipse(175,25,5,5);
		rect(125,22,50,5);
	//cameras
		ellipse(150,15,5,5);
		ellipse(110,25,10,10);
	//screen
		rect(25,50,250,400);
}

