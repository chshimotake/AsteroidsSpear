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