class SideBlade extends Chastiefol 
{   
    public SideBlade()
    {
        yCorners=new int[]{0,-2,-1,-2,-2,-1,1,2,2,1,2};
    	xCorners=new int[]{89,84,82,81,60,58,58,60,81,82,84,89};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=11;
    	myColor=color(163,168,172);
    }
}