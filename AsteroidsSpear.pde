//your variable declarations 
Chastiefol spear;
boolean spin=false;
public void setup() 
{
  size(1000,1000);
  background(0,0,0);
  frameRate(6000);
  spear=new Chastiefol();
}
public void draw() 
{
  fill(0,0,0, 25);
  rect(0,0,1000,1000);
  spear.myCenterX=mouseX;
  spear.myCenterY=mouseY;
  spear.show();
  spear.move();
}
public void keyPressed()
{
	switch(key){
		/*case 'w':
			spear.accelerate(5);
		break;
		case 's':
			spear.accelerate(-5);
		break;*/
		case 'a':
			if(spin==false)
			{
				spear.turn(-10);
			}
			if(spin==true)
			{
				for(int i=0;i<20;i++)
				{
					spear.turn(-10);
					spear.show();
				}
			}
		break;
		case 'd':
			if(spin==false)
			{
				spear.turn(10);
			}
			if(spin==true)
			{
				for(int i=0;i<30;i++)
				{
					spear.turn(10);
					spear.show();
				}
			}
		break;
		case 'f':
			spear.setDirectionX(0);
			spear.setDirectionY(0);
		break;
		case 'e':
			spin=!spin;
	}
}

