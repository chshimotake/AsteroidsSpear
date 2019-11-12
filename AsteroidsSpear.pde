//your variable declarations 
Chastiefol spear;
RightBlade rBlade;
boolean spin=false;
public void setup() 
{
  size(1000,1000);
  background(0,0,0);
  frameRate(6000);
  spear=new Chastiefol();
  rBlade=new RightBlade();
}
public void draw() 
{
  fill(0,0,0);
  rect(0,0,1000,1000);
  //spear.myCenterX=mouseX;
  //spear.myCenterY=mouseY;
  spearShow();
  spearMove();
}
public void keyPressed()
{
	switch(key){
		case 'w':
			spearAccel(5);
		break;
		case 's':
			spearAccel(-5);
		break;
		case 'a':
			if(spin==false)
			{
				spearTurn(-10);
			}
			if(spin==true)
			{
				for(int i=0;i<20;i++)
				{
					spearTurn(-10);
					spearShow();
				}
			}
		break;
		case 'd':
			if(spin==false)
			{
				spearTurn(10);
			}
			if(spin==true)
			{
				for(int i=0;i<30;i++)
				{
					spearTurn(10);
					spearShow();
				}
			}
		break;
		case 'f':
			spearStop();
		break;
		case 'e':
			spin=!spin;
	}
}
void spearMove()
{
	spear.move();
	rBlade.move();
}
void spearShow()
{
	spear.show();
	rBlade.show();
}
void spearAccel(int a)
{
	spear.accelerate(a);
	rBlade.accelerate(a);
}
void spearTurn(int a)
{
	spear.turn(a);
	rBlade.turn(a);
}
void spearStop()
{
	spear.setDirectionX(0);
	spear.setDirectionY(0);
	rBlade.setDirectionX(0);
	rBlade.setDirectionY(0);
}

