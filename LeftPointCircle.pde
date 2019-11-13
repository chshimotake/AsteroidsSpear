class LeftPointCircle extends Chastiefol  
{   
    public LeftPointCircle()
    {
        yCorners=new int[]{-9,-8,-6,-5,-5,-6,-8,-9};
    	xCorners=new int[]{52,53,53,52,50,49,49,50};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
    	corners=8;
    	myColor=color(150,122,59);
    }
}