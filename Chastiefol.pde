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
