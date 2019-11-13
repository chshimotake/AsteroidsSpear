class HeadPoint extends Chastiefol  
{   
    public HeadPoint()
    {
        yCorners=new int[]{0,-1,-2,2,1};
    	xCorners=new int[]{46,38,33,33,38};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=5;
    	myColor=color(150,122,59);
    }
}