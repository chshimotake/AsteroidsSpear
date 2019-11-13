class EndTip extends Chastiefol  
{   
    public EndTip()
    {
        yCorners=new int[]{2,0,-2};
    	xCorners=new int[]{-87,-89,-87};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=3;
    	myColor=color(150,122,59);
    }
}