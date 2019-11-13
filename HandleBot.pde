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