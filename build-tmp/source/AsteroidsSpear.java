import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class AsteroidsSpear extends PApplet {

//your variable declarations 
Chastiefol spear;
ChastiefolSide spearSide;
RightBlade rBlade;
SideRightBlade sRBlade;
LeftBlade lBlade;
SideLeftBlade sLBlade;
Head head;
SideHead sHead;
RightPointCircle rPCircle;
SideTopCircle sTCircle;
LeftPointCircle lPCircle;
SideBotCircle sBCircle;
OuterHeadHole oHHole;
InnerHeadHole iHHole;
HeadPoint hPoint;
SideHeadPoint sHPoint;
HandleTop hTop;
HandleMid hMid;
HandleBot hBot;
OuterEndHole oEHole;
InnerEndHole iEHole;
SideEndHole sEHole;
EndTip eTip;
SideBlade sBlade;
boolean spin=false, side=true;
int edge=0,frame=0;
public void setup() 
{
  
  background(0,0,0);
  frameRate(6000);
  spear=new Chastiefol();
  spearSide=new ChastiefolSide();
  rBlade=new RightBlade();
  sRBlade=new SideRightBlade();
  lBlade=new LeftBlade();
  sLBlade=new SideLeftBlade();
  sBlade=new SideBlade();
  rPCircle=new RightPointCircle();
  sTCircle=new SideTopCircle();
  lPCircle=new LeftPointCircle();
  sBCircle=new SideBotCircle();
  oHHole=new OuterHeadHole();
  iHHole=new InnerHeadHole();
  head=new Head();
  sHead=new SideHead();
  hPoint=new HeadPoint();
  sHPoint=new SideHeadPoint();
  hTop=new HandleTop();
  hMid=new HandleMid();
  hBot=new HandleBot();
  oEHole=new OuterEndHole();
  iEHole=new InnerEndHole();
  sEHole=new SideEndHole();
  eTip=new EndTip();
}
public void draw() 
{
  fill(0,0,0,50);//,25);
  rect(0,0,1000,1000);
  //spear.myCenterX=mouseX;
  //spear.myCenterY=mouseY;
  if(side==false)
  {
  	spearShow();
  }else if(side==true)
  {
  	spearSideShow();
  }
  spearMove();
  spearSideMove();
  spearDrill();
}
public void keyPressed()
{
	switch(key){
		case 'w':
			spearAccel(5);
			spearSideAccel(5);
		break;
		case 's':
			spearAccel(-5);
			spearSideAccel(-5);
		break;
		case 'a':
			if(spin==false)
			{
				spearTurn(-10);
				spearSideTurn(-10);
			}
			if(spin==true)
			{
				if(side==false)
				{
					for(int i=0;i<20;i++)
					{
						spearTurn(-10);
						spearSideTurn(-10);
						spearSideShow();
						spearShow();
					}
				}
				if(side==true)
				{
					for(int i=0;i<20;i++)
					{
						spearTurn(-10);
						spearSideTurn(-10);
						spearShow();
						spearSideShow();
					}
				}
			}
		break;
		case 'd':
			if(spin==false)
			{
				spearTurn(10);
				spearSideTurn(10);
			}
			if(spin==true)
			{
				if(side==false)
				{
					for(int i=0;i<20;i++)
					{
						spearTurn(10);
						spearSideTurn(10);
						spearSideShow();
						spearShow();
					}
				}
				if(side==true)
				{
					for(int i=0;i<20;i++)
					{
						spearTurn(10);
						spearSideTurn(10);
						spearShow();
						spearSideShow();
					}
				}
			}
		break;
		case 'f':
			spearStop();
			spearSideStop();
		break;
		case 'e':
			spin=!spin;
		break;
		case '1':
			side=false;
		break;
		case '2':
			side=true;
			edge++;
		break;
	}
}
public void spearDrill()
{
	frame++;
	if(frame%6==0)
	{
		side=!side;
		if(side==true)
		{
	  	edge++;
		}
	}
}



public void spearSideMove()
{
	spearSide.move();
	sHead.move();
	sRBlade.move();
	sLBlade.move();
	sTCircle.move();
	sBCircle.move();
	sHPoint.move();
	sEHole.move();
}
public void spearSideShow()
{
	spearSide.show();
	sHead.show();
	if(edge%2==0)
	{
		sRBlade.show();
	}else{
		sLBlade.show();
	}
	sTCircle.show();
	sBCircle.show();
	sHPoint.show();
	hTop.show();
	hMid.show();
	hBot.show();
	sEHole.show();
	eTip.show();
}
public void spearSideAccel(int a)
{
	spearSide.accelerate(a);
	sHead.accelerate(a);
	sRBlade.accelerate(a);
	sLBlade.accelerate(a);
	sTCircle.accelerate(a);
	sBCircle.accelerate(a);
	sHPoint.accelerate(a);
	sEHole.accelerate(a);
}
public void spearSideTurn(int a)
{
	spearSide.turn(a);
	sHead.turn(a);
	sRBlade.turn(a);
	sLBlade.turn(a);
	sTCircle.turn(a);
	sBCircle.turn(a);
	sHPoint.turn(a);
	sEHole.turn(a);
}
public void spearSideStop()
{
	spearSide.setDirectionX(0);
	spearSide.setDirectionY(0);
	sHead.setDirectionX(0);
	sHead.setDirectionY(0);
	sRBlade.setDirectionX(0);
	sRBlade.setDirectionY(0);
	sLBlade.setDirectionX(0);
	sLBlade.setDirectionY(0);
	sTCircle.setDirectionX(0);
	sTCircle.setDirectionY(0);
	sBCircle.setDirectionX(0);
	sBCircle.setDirectionY(0);
	sHPoint.setDirectionX(0);
	sHPoint.setDirectionY(0);
	sEHole.setDirectionX(0);
	sEHole.setDirectionY(0);
}



public void spearMove()
{
	spear.move();
	rBlade.move();
	lBlade.move();
	head.move();
	rPCircle.move();
	lPCircle.move();
	oHHole.move();
	iHHole.move();
	hPoint.move();
	hTop.move();
	hMid.move();
	hBot.move();
	oEHole.move();
	iEHole.move();
	eTip.move();
}
public void spearShow()
{
	spear.show();
	rBlade.show();
	lBlade.show();
	head.show();
	rPCircle.show();
	lPCircle.show();
	oHHole.show();
	iHHole.show();
	hPoint.show();
	hTop.show();
	hMid.show();
	hBot.show();
	oEHole.show();
	iEHole.show();
	eTip.show();
}
public void spearAccel(int a)
{
	spear.accelerate(a);
	rBlade.accelerate(a);
	lBlade.accelerate(a);
	head.accelerate(a);
	rPCircle.accelerate(a);
	lPCircle.accelerate(a);
	oHHole.accelerate(a);
	iHHole.accelerate(a);
	hPoint.accelerate(a);
	hTop.accelerate(a);
	hMid.accelerate(a);
	hBot.accelerate(a);
	oEHole.accelerate(a);
	iEHole.accelerate(a);
	eTip.accelerate(a);
}
public void spearTurn(int a)
{
	spear.turn(a);
	rBlade.turn(a);
	lBlade.turn(a);
	head.turn(a);
	rPCircle.turn(a);
	lPCircle.turn(a);
	oHHole.turn(a);
	iHHole.turn(a);
	hPoint.turn(a);
	hTop.turn(a);
	hMid.turn(a);
	hBot.turn(a);
	oEHole.turn(a);
	iEHole.turn(a);
	eTip.turn(a);
}
public void spearStop()
{
	spear.setDirectionX(0);
	spear.setDirectionY(0);
	rBlade.setDirectionX(0);
	rBlade.setDirectionY(0);
	head.setDirectionX(0);
	head.setDirectionY(0);
	lBlade.setDirectionX(0);
	lBlade.setDirectionY(0);
	rPCircle.setDirectionX(0);
	rPCircle.setDirectionY(0);
	lPCircle.setDirectionX(0);
	lPCircle.setDirectionY(0);
	oHHole.setDirectionX(0);
	oHHole.setDirectionY(0);
	iHHole.setDirectionX(0);
	iHHole.setDirectionY(0);
	hPoint.setDirectionX(0);
	hPoint.setDirectionY(0);
	hTop.setDirectionX(0);
	hTop.setDirectionY(0);
	hMid.setDirectionX(0);
	hMid.setDirectionY(0);
	hBot.setDirectionX(0);
	hBot.setDirectionY(0);
	oEHole.setDirectionX(0);
	oEHole.setDirectionY(0);
	iEHole.setDirectionX(0);
	iEHole.setDirectionY(0);
	eTip.setDirectionX(0);
	eTip.setDirectionY(0);
}

class Chastiefol extends Floater  
{   
    int sizeChange=2;
    public Chastiefol()
    {
    	//xCorners=new int[]{-1,-2,-2,-6,-6,-14,-14,-15,-15,-16,-16,-17,-17,-16,-16,-15,-15,-14,-14,-5,-5,-3,-3,-2,-2,2,2,3,3,5,5,14,14,15,15,16,16,17,17,16,16,15,15,14,14,6,6,2,2,1};
    	//yCorners=new int[]{20,1,2,2,1,1,2,2,15,15,2,2,-10,-10,-11,-11,-10,-10,-9,-11,-16,-16,-10,-9,-11,-11,-9,-10,-16,-16,-11,-9,-10,-10,-11,-11,-10,-10,2,2,15,15,2,2,1,1,2,2,1,20};
    	yCorners=new int[]{0,-4,-3,-5,-6,-4,-2,-6,-14,-6,-3,-2,-2,-4,-4,-2,0,2,4,4,2,2,3,6,14,6,2,4,6,5,3,4};
    	xCorners=new int[]{89,84,82,81,59,60,58,54,51,48,45,41,-79,-81,-85,-87,-89,-87,-85,-81,-79,41,45,48,51,54,58,60,59,81,82,84};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
        //corners=50;
    	corners=32;
    	myColor=color(134,139,143);
    	myCenterX=500;
    	myCenterY=500;
    	myDirectionX=0;
    	myDirectionY=0;
    	myPointDirection=0;
    }//your code here
    public void setX(int x){myCenterX=x;}
    public int getX(){return (int)myCenterX;}
    public void setY(int y){myCenterY=y;}
    public int getY(){return (int)myCenterY;}
    public void setDirectionX(double x){myDirectionX=x;}
    public double getDirectionX(){return myDirectionX;}
    public void setDirectionY(double y){myDirectionY=y;}
    public double getDirectionY(){return myDirectionY;}
    public void setPointDirection(int degrees){myPointDirection=degrees;}
    public double getPointDirection(){return myPointDirection;}
}
class ChastiefolSide extends Chastiefol  
{   
    public ChastiefolSide()
    {
    	//xCorners=new int[]{-1,-2,-2,-6,-6,-14,-14,-15,-15,-16,-16,-17,-17,-16,-16,-15,-15,-14,-14,-5,-5,-3,-3,-2,-2,2,2,3,3,5,5,14,14,15,15,16,16,17,17,16,16,15,15,14,14,6,6,2,2,1};
    	//yCorners=new int[]{20,1,2,2,1,1,2,2,15,15,2,2,-10,-10,-11,-11,-10,-10,-9,-11,-16,-16,-10,-9,-11,-11,-9,-10,-16,-16,-11,-9,-10,-10,-11,-11,-10,-10,2,2,15,15,2,2,1,1,2,2,1,20};
    	yCorners=new int[]{0,-2,-1,-2,-2,-1,-2,-2,-2,-2,0,2,2,2,2,1,2,2,1,2};
    	xCorners=new int[]{89,84,82,81,60,58,54,48,33,-87,-89,-87,33,48,54,58,60,81,82,84,};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
        corners=20;
    	myColor=color(134,139,143);
    }
}
class EndTip extends Chastiefol  
{   
    public EndTip()
    {
        yCorners=new int[]{2,0,-2};
    	xCorners=new int[]{-87,-89,-87};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=3;
    	myColor=color(150,122,59);
    }
}
class Floater //Do NOT modify the Floater class! Make changes in the Spaceship class 
{   
  protected int corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int myColor;   
  protected double myCenterX, myCenterY; //holds center coordinates   
  protected double myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
  protected double myPointDirection; //holds current direction the ship is pointing in degrees    

  //Accelerates the floater in the direction it is pointing (myPointDirection)   
  public void accelerate (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myDirectionX += ((dAmount) * Math.cos(dRadians));    
    myDirectionY += ((dAmount) * Math.sin(dRadians));       
  }   
  public void turn (int nDegreesOfRotation)   
  {     
    //rotates the floater by a given number of degrees    
    myPointDirection+=nDegreesOfRotation;   
  }   
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
} 
class HandleBot extends Chastiefol  
{   
    public HandleBot()
    {
        yCorners=new int[]{-3,3,3,-3};
    	xCorners=new int[]{23,23,22,22};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=4;
    	myColor=color(150,122,59);
    }
}
class HandleMid extends Chastiefol  
{   
    public HandleMid()
    {
        yCorners=new int[]{-2,2,2,-2};
    	xCorners=new int[]{32,32,23,23};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=4;
    	myColor=color(34,101,100);
    }
}
class HandleTop extends Chastiefol  
{   
    public HandleTop()
    {
        yCorners=new int[]{-3,3,3,-3};
    	xCorners=new int[]{33,33,32,32};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=4;
    	myColor=color(150,122,59);
    }
}
class Head extends Chastiefol  
{   
    public Head()
    {
        yCorners=new int[]{-1,-2,-6,-14,-6,-3,-2,-2,-1,0,1,2,2,3,6,14,6,2,1};
    	xCorners=new int[]{55,58,54,51,48,45,41,33,38,46,38,33,41,45,48,51,54,58,55};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=19;
    	myColor=color(41,38,42);
    }
}
class HeadPoint extends Chastiefol  
{   
    public HeadPoint()
    {
        yCorners=new int[]{0,-1,-2,2,1};
    	xCorners=new int[]{46,38,33,33,38};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=5;
    	myColor=color(150,122,59);
    }
}
class InnerEndHole extends Chastiefol  
{   
    public InnerEndHole()
    {
        yCorners=new int[]{1,2,2,1,-1,-2,-2,-1};
    	xCorners=new int[]{-81,-82,-84,-85,-85,-84,-82,-81};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=8;
    	myColor=color(0,0,0);
    }
}
class InnerHeadHole extends Chastiefol  
{   
    public InnerHeadHole()
    {
        yCorners=new int[]{-3,-2,2,3,3,2,-2,-3};
    	xCorners=new int[]{53,54,54,53,49,48,48,49};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=8;
    	myColor=color(0,0,0);
    }
}
class LeftBlade extends Chastiefol  
{   
    public LeftBlade()
    {
        yCorners=new int[]{0,-4,-3,-5,-6,-4,-2,-1,0};
    	xCorners=new int[]{89,84,82,81,59,60,58,55,55};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=9;
    	myColor=color(163,168,172);
    }
}
class LeftPointCircle extends Chastiefol  
{   
    public LeftPointCircle()
    {
        yCorners=new int[]{-9,-8,-6,-5,-5,-6,-8,-9};
    	xCorners=new int[]{52,53,53,52,50,49,49,50};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=8;
    	myColor=color(150,122,59);
    }
}
class OuterEndHole extends Chastiefol  
{   
    public OuterEndHole()
    {
        yCorners=new int[]{2,4,4,2,-2,-4,-4,-2};
    	xCorners=new int[]{-79,-81,-85,-87,-87,-85,-81,-79};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=8;
    	myColor=color(34,101,100);
    }
}
class OuterHeadHole extends Chastiefol  
{   
    public OuterHeadHole()
    {
        yCorners=new int[]{-2,2,4,4,2,-2,-4,-4};
    	xCorners=new int[]{55,55,53,49,47,47,49,53};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=8;
    	myColor=color(150,122,59);
    }
}
class RightBlade extends Chastiefol  
{   
    public RightBlade()
    {
        yCorners=new int[]{0,4,3,5,6,4,2,1,0};
    	xCorners=new int[]{89,84,82,81,59,60,58,55,55};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=9;
    	myColor=color(94,97,104);
    }
}
class RightPointCircle extends Chastiefol  
{   
    public RightPointCircle()
    {
        yCorners=new int[]{9,8,6,5,5,6,8,9};
    	xCorners=new int[]{52,53,53,52,50,49,49,50};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=8;
    	myColor=color(150,122,59);
    }
}
class SideBlade extends Chastiefol 
{   
    public SideBlade()
    {
        yCorners=new int[]{0,-2,-1,-2,-2,-1,1,2,2,1,2};
    	xCorners=new int[]{89,84,82,81,60,58,58,60,81,82,84,89};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=11;
    	myColor=color(163,168,172);
    }
}
class SideBotCircle extends Chastiefol 
{   
    public SideBotCircle()
    {
        yCorners=new int[]{3,3,2,2};
    	xCorners=new int[]{47,55,55,47};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=4;
    	myColor=color(150,122,59);
    }
}
class SideEndHole extends Chastiefol 
{   
    public SideEndHole()
    {
        yCorners=new int[]{-2,-2,2,2};
    	xCorners=new int[]{-79,-87,-87,-79};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=4;
    	myColor=color(34,101,100);
    }
}
class SideHead extends Chastiefol 
{   
    public SideHead()
    {
        yCorners=new int[]{-1,-2,-2,-1,1,2,2,1};
    	xCorners=new int[]{58,54,48,33,33,48,54,58};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=8;
    	myColor=color(41,38,42);
    }
}
class SideHeadPoint extends Chastiefol 
{   
    public SideHeadPoint()
    {
        yCorners=new int[]{-2,-2,-1,0,1,2,2,};
    	xCorners=new int[]{33,46,39,33,39,46,33};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=7;
    	myColor=color(150,122,59);
    }
}
class SideLeftBlade extends Chastiefol 
{   
    public SideLeftBlade()
    {
        yCorners=new int[]{0,-2,-1,-2,-2,0,2,2,1,2};
    	xCorners=new int[]{89,84,82,81,60,59,60,81,82,84,89};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=10;
    	myColor=color(163,168,172);
    }
}
class SideRightBlade extends Chastiefol 
{   
    public SideRightBlade()
    {
        yCorners=new int[]{0,-2,-1,-2,-2,0,2,2,1,2};
    	xCorners=new int[]{89,84,82,81,60,59,60,81,82,84,89};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=10;
    	myColor=color(94,97,104);
    }
}
class SideTopCircle extends Chastiefol 
{   
    public SideTopCircle()
    {
        yCorners=new int[]{-3,-3,-2,-2};
    	xCorners=new int[]{47,55,55,47};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=4;
    	myColor=color(150,122,59);
    }
}
class Star //note that this class does NOT extend Floater
{
  //your code here
}
  public void settings() {  size(1000,1000); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "AsteroidsSpear" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}