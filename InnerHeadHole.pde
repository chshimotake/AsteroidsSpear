class InnerHeadHole extends Chastiefol  
{   
    public InnerHeadHole()
    {
        yCorners=new int[]{-3,-2,2,3,3,2,-2,-3};
    	xCorners=new int[]{53,54,54,53,49,48,48,49};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=8;
    	myColor=color(0,0,0);
    }
}