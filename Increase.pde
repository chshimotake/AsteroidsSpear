class Increase extends Chastiefol  
{   
    int sizeChange=2;
    public Increase()
    {
    	//xCorners=new int[]{-1,-2,-2,-6,-6,-14,-14,-15,-15,-16,-16,-17,-17,-16,-16,-15,-15,-14,-14,-5,-5,-3,-3,-2,-2,2,2,3,3,5,5,14,14,15,15,16,16,17,17,16,16,15,15,14,14,6,6,2,2,1};
    	//yCorners=new int[]{20,1,2,2,1,1,2,2,15,15,2,2,-10,-10,-11,-11,-10,-10,-9,-11,-16,-16,-10,-9,-11,-11,-9,-10,-16,-16,-11,-9,-10,-10,-11,-11,-10,-10,2,2,15,15,2,2,1,1,2,2,1,20};
    	yCorners=new int[]{0,-4,-3,-2,-4,-4,-2,-1,0,1,2,4,4,2,3,4};
    	xCorners=new int[]{16,-2,-4,-5,-7,-10,-12,-12,-16,-12,-12,-10,-7,-5,-4,-2,};
    	for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]*sizeChange;
            xCorners[i]=xCorners[i]*sizeChange;
        }
        //corners=50;
    	corners=16;
    	myColor=color(134,139,143);
    }
}