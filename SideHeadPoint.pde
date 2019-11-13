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