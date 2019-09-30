//Phone drop simulator
// restart = 
int startX = 0;
int startY = 150;
int endX = 0;
int endY 150;
void setup()
{
  size(300,300);
  strokeWeight(0);
  background();
}
void draw()
{
	while(endX<150){
		endX = startX + (int)(Math.random()*9);
		endY = startY + (int)(Math.random()*18);
		if(endY > 9){
			endY = endY - 18;
		}
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}

}
void mousePressed()
{
	startX = 0;
	startY = 150;
	endX = 0;
	endY 150;
}

