class OuterHeadHole extends Chastiefol  
{   
    public OuterHeadHole()
    {
        yCorners=new int[]{-2,2,4,4,2,-2,-4,-4};
    	xCorners=new int[]{55,55,53,49,47,47,49,53};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=8;
    	myColor=color(150,122,59);
    }
}