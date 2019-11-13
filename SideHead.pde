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