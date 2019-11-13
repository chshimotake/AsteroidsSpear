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