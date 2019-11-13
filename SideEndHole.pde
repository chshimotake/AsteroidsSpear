class SideEndHole extends Chastiefol 
{   
    public SideEndHole()
    {
        yCorners=new int[]{-2,-2,2,2};
    	xCorners=new int[]{-79,-87,-87,-79};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=4;
    	myColor=color(34,101,100);
    }
}