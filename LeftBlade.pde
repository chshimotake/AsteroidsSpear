class LeftBlade extends Chastiefol  
{   
    public LeftBlade()
    {
        yCorners=new int[]{0,-4,-3,-5,-6,-4,-2,-1,0};
    	xCorners=new int[]{89,84,82,81,59,60,58,55,55};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=9;
    	myColor=color(163,168,172);
    }
}
