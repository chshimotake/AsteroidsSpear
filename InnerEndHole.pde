class InnerEndHole extends Chastiefol  
{   
    public InnerEndHole()
    {
        yCorners=new int[]{1,2,2,1,-1,-2,-2,-1};
    	xCorners=new int[]{-81,-82,-84,-85,-85,-84,-82,-81};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=8;
    	myColor=color(0,0,0);
    }
}