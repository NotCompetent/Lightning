//Phone drop simulator
// restart = 
int startX = 50;
int startY = 200;
int endX = 50;
int endY = 200;
void setup()
{
  size(300,500);
  strokeWeight(1);
  background(0);
  stroke(255);
}
void draw()
{
	startY = (int)(Math.random()*300);
	while(endX<250){
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
	startX = 50;
	startY = 150;
	endX = 50;
	endY = 150;
}

