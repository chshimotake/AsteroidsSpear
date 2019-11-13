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