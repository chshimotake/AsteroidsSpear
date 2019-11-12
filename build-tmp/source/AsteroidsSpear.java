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
boolean spin=false;
public void setup() 
{
  
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

class Chastiefol extends Floater  
{   
    public Chastiefol()
    {
    	//xCorners=new int[]{-1,-2,-2,-6,-6,-14,-14,-15,-15,-16,-16,-17,-17,-16,-16,-15,-15,-14,-14,-5,-5,-3,-3,-2,-2,2,2,3,3,5,5,14,14,15,15,16,16,17,17,16,16,15,15,14,14,6,6,2,2,1};
    	//yCorners=new int[]{20,1,2,2,1,1,2,2,15,15,2,2,-10,-10,-11,-11,-10,-10,-9,-11,-16,-16,-10,-9,-11,-11,-9,-10,-16,-16,-11,-9,-10,-10,-11,-11,-10,-10,2,2,15,15,2,2,1,1,2,2,1,20};
    	yCorners=new int[]{0,-4,-3,-5,-6,-4,-2,-6,-14,-6,-3,-2,-2,-4,-4,-2,0,2,4,4,2,2,3,6,14,6,2,4,6,5,3,4};
    	xCorners=new int[]{89,84,82,81,59,60,58,54,51,48,45,41,-79,-81,-85,-87,-89,-87,-85,-81,-79,41,45,48,51,54,58,60,59,81,82,84};
    	//corners=50;
    	corners=32;
    	myColor=color(211,211,211);
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
    public void show()
    {
    	stroke(211,211,211);
        fill(211,211,211);
        super.show();
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
