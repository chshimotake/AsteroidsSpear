class Sunflower extends Floater  
{   
    public Sunflower()
    {
    	//frame one
        //xCorners=new int[]{135,140,115,125,110,115,105,105,92,82,84,65,60,50,38,34,30,20,10,0,-10,-35,-30,-35,-38,-45,-55,-60,-70,-95,-95,-90,-110,-110,-120,-120,-115,-125,-135,-130,-125,-133,-140,-130};
        //yCorners=new int[]{0,-40,-50,-75,-74,-100,-95,-110,-112,-115,-125,-130,-151,-150,-175,-172,-175,-210,-180,-240,-200,-230,-180,-185,-160,-170,-167,-160,-130,-140,-120,-110,-110,-85,-80,-70,-60,-60,-55,-40,-35,-32,-30,0};
        

        //frame two
        xCorners=new int[]{125,125,118,105,115,110,125,110,125,110,120,105,113,100,105,94,100,87,89,80,75,60,60,47,49,34,25,12,5,7,-8,-7,-18,-17-29,-29,-40,-40,-50,-50,-40,-60,-50,-60,-50,-56,-50,-55,-43,-50,-35,-35,-19,-19,-30,-40,-50,-60,-70};
        yCorners=new int[]{0,-100,-150,-290,-295,-310,-320,-335,-345,-360,-373,-392,-403,-420,-435,-450,-460,-465,-480,-493,-497,-516,-518,-528,-530,-540,-530,-530,-520,-512,-503,-504,-480,-478,-462,-462,-440,-440,-420,-410,-390,-380,-365,-355,-343,-335,-320,-317,-295,-295,-275,-275,-205,-160,-140,-90,-20,0};

        //frame three
        //xCorners=new int[]{};
        //yCorners=new int[]{};

        //frame four
        //xCorners=new int[]{};
        //yCorners=new int[]{};

        //frame five
        //xCorners=new int[]{};
        //yCorners=new int[]{};

        //frame six
        //xCorners=new int[]{200,220,220,200,180,170,210,185,157,155,148,143,150,156,160,170,174,180,210,185,177,170,162,157,152,140,132,125,160,200,227,195,160,115,114,117,130,128,129,140,139,141,152,154,168,148,128,122,124,108,101,104,91,83,86,70,98,107,75,8,5,18,14,11,25,18,16,26,20,16,-6,-12,-7,-12,-28,-23,-43,-33,-41,-49,-71,-107,-128,-151,-161,-156,-165,-172,-167,-174,-182,-177,-187,-205,-202,-208,-203,-203,-210,-205,-204,-210,-199,-206,-197,-199,-250,-300,-328,-295,-308,-309,-318,-328,-327,-340,-340,-360,-398,-380,-374,-369,-366,-366,-361,-357,-355,-355,-348,-344,-343,-331,-327,-328,-315,-313,-330,-411,-390,-360,-345,-358,-367,-370,-381,-387,-390,-396,-400,-412,-422,-443,-453,-446,-430,-424,-418,-414,-402,-400,-392,-380,-375,-365,-361,-354,-344,-365,-397,-370,-330,-333,-347,-346,-360,-359,-361,-373,-371,-375,-385,-388,-403,-370,-357,-359,-350,-332,-334,-325,-310,-313,-315,-308,-295,-298,-290,-281,-294,-314,-306,-274,-268,-267,-278,-275,-273,-280,-277,-275,-280,-279,-285,-275,-254,-256,-250,-237,-240,-232,-221,-227,-208,-211,-206,-196,-180,-145,-135,-130,-137,-127,-134,-120,-127,-117,-105,-93,-83,-90,-76,-83,-70,-80,-70,-40,-45,-55,-80,-120};//105
    	//yCorners=new int[]{0,-120,-320,-450,-520,-540,-557,-565,-582,-590,-605,-612,-620,-613,-620,-629,-622,-630,-640,-648,-658,-651,-658,-668,-661,-675,-665,-675,-700,-750,-805,-789,-783,-781,-790,-800,-797,-808,-815,-816,-825,-840,-838,-850,-880,-870,-868,-870,-859,-857,-859,-845,-843,-846,-831,-830,-930,-955,-943,-889,-903,-907,-911,-925,-931,-940,-949,-954,-962,-987,-964,-963,-956,-950,-944,-936,-926,-916,-909,-906,-959,-1015,-960,-895,-903,-912,-912,-919,-928,-929,-938,-944,-952,-979,-954,-932,-932,-925,-912,-910,-903,-892,-888,-872,-868,-860,-885,-895,-907,-803,-796,-812,-809,-807,-814,-812,-820,-823,-845,-820,-806,-807,-795,-789,-789,-780,-773,-772,-774,-760,-753,-755,-740,-733,-737,-726,-725,-706,-694,-655,-642,-637,-646,-640,-631,-641,-634,-630,-635,-625,-632,-620,-622,-616,-610,-605,-595,-603,-590,-585,-594,-582,-590,-582,-576,-586,-575,-550,-511,-511,-497,-489,-494,-477,-483,-476,-461,-464,-455,-443,-445,-430,-408,-417,-416,-424,-425,-419,-432,-433,-430,-435,-444,-445,-440,-454,-455,-452,-410,-370,-373,-382,-374,-367,-365,-358,-350,-346,-340,-332,-331,-320,-297,-305,-312,-318,-322,-324,-334,-338,-339,-352,-355,-363,-367,-340,-285,-330,-370,-360,-355,-341,-340,-325,-322,-310,-285,-310,-322,-325,-340,-341,-355,-360,-370,-320,-260,-160,-80,0};//go to 210
        /*for(int i=0;i<yCorners.length;i++)
        {
            yCorners[i]=yCorners[i]/2;
            xCorners[i]=xCorners[i]/2;
        }*/
        //corners=50;
    	//frame one
        //corners=44;

        //frame two
        corners=58;

        //frame three
        //corners=;

        //frame four
        //corners=;

        //frame five
        //corners=;

        //frame six
        //corners=250;
    	myColor=color(255,255,255);
        myCenterX=500;
        myCenterY=700;
        myDirectionX=0;
        myDirectionY=0;
        myPointDirection=0;
    }//your code here
    public void setX(int x){myCenterX=x;}
    public int getX(){return (int)myCenterX;}
    public void setY(int y){myCenterY=y;}
    public int getY(){return (int)myCenterY;}
    public void setDirectionX(double x){myDirectionX=x;}
    public double getDirectionX(){return myDirectionX;}
    public void setDirectionY(double y){myDirectionY=y;}
    public double getDirectionY(){return myDirectionY;}
    public void setPointDirection(int degrees){myPointDirection=degrees;}
    public double getPointDirection(){return myPointDirection;}
}
