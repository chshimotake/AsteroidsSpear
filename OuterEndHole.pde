class OuterEndHole extends Chastiefol  
{   
    public OuterEndHole()
    {
        yCorners=new int[]{2,4,4,2,-2,-4,-4,-2};
    	xCorners=new int[]{-79,-81,-85,-87,-87,-85,-81,-79};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=8;
    	myColor=color(34,101,100);
    }
}