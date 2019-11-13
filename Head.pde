class Head extends Chastiefol  
{   
    public Head()
    {
        yCorners=new int[]{-1,-2,-6,-14,-6,-3,-2,-2,-1,0,1,2,2,3,6,14,6,2,1};
    	xCorners=new int[]{55,58,54,51,48,45,41,33,38,46,38,33,41,45,48,51,54,58,55};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=19;
    	myColor=color(41,38,42);
    }
}