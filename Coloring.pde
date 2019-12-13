class Coloring extends Floater
{
	public Coloring(int[] xCoord, int[] yCoord, color coloring, Chastiefol spear)
	{
		xCorners=xCoord;
		yCorners=yCoord;
    	corners=Math.min(xCorners.length, yCorners.length);
    	myColor=coloring;
    	myCenterX=spear.getX();
    	myCenterY=spear.getY();
    	myDirectionX=spear.getDirectionX();
    	myDirectionY=spear.getDirectionY();
    	myPointDirection=spear.getPointDirection();
	}
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
    public void move()
    {
    	myCenterX=spear.getX();
    	myCenterY=spear.getY();
    	myPointDirection=spear.getPointDirection();
    }
}