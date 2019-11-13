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