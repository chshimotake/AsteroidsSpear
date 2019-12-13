//your variable declarations 
Chastiefol spear;
ChastiefolSide spearSide;
Coloring rightBlade;
Coloring sideRightBlade;
Coloring leftBlade;
Coloring sideLeftBlade;
Head head;
SideHead sHead;
RightPointCircle rPCircle;
SideTopCircle sTCircle;
LeftPointCircle lPCircle;
SideBotCircle sBCircle;
OuterHeadHole oHHole;
InnerHeadHole iHHole;
HeadPoint hPoint;
SideHeadPoint sHPoint;
HandleTop hTop;
HandleMid hMid;
HandleBot hBot;
OuterEndHole oEHole;
InnerEndHole iEHole;
SideEndHole sEHole;
EndTip eTip;
SideBlade sBlade;
Increase dagger;
Sunflower sun;
boolean spin=false, side=false, topBot=false;
int edge=0,frame=0, form=1,shade=0, incrFrame=0;
ArrayList<Integer> incrX=new ArrayList<Integer>();
ArrayList<Integer> incrY=new ArrayList<Integer>();
ArrayList<Integer> incrPoint=new ArrayList<Integer>();
ArrayList<Double> incrDirX=new ArrayList<Double>();
ArrayList<Double> incrDirY=new ArrayList<Double>();
ArrayList<Increase> incrTrail=new ArrayList<Increase>();
public void setup() 
{
	size(1000,1000);
	background(0,0,0);
	frameRate(30);
	spear=new Chastiefol();
	spearSide=new ChastiefolSide();
	rightBlade=new Coloring(new int[]{89,84,82,81,59,60,58,55,55},new int[]{0,4,3,5,6,4,2,1,0},color(94,97,104),spear);
	sideRightBlade=new Coloring(new int[]{89,84,82,81,60,59,60,81,82,84,89},new int[]{0,-2,-1,-2,-2,0,2,2,1,2},color(94,97,104),spear);
	leftBlade=new Coloring(new int[]{89,84,82,81,59,60,58,55,55},new int[]{0,-4,-3,-5,-6,-4,-2,-1,0},color(163,168,172),spear);
	sideLeftBlade=new Coloring(new int[]{89,84,82,81,60,59,60,81,82,84,89},new int[]{0,-2,-1,-2,-2,0,2,2,1,2},color(163,168,172),spear);
    sBlade=new SideBlade();
	rPCircle=new RightPointCircle();
	sTCircle=new SideTopCircle();
	lPCircle=new LeftPointCircle();
	sBCircle=new SideBotCircle();
	oHHole=new OuterHeadHole();
	iHHole=new InnerHeadHole();
	head=new Head();
	sHead=new SideHead();
	hPoint=new HeadPoint();
	sHPoint=new SideHeadPoint();
	hTop=new HandleTop();
	hMid=new HandleMid();
	hBot=new HandleBot();
	oEHole=new OuterEndHole();
	iEHole=new InnerEndHole();
	sEHole=new SideEndHole();
	eTip=new EndTip();
	dagger=new Increase();
	sun=new Sunflower();

	for(int i=0;i<5;i++)
	{
		incrX.add(i, dagger.getX());
		incrY.add(i, dagger.getY());
		incrDirX.add(i, dagger.getDirectionX());
		println("bleh");
		incrDirY.add(i, dagger.getDirectionY());
		incrPoint.add(i, (int)(dagger.getPointDirection()));
		incrTrail.add(i, new Increase());
	}
}
public void draw() 
{
	fill(0,0,0);//,50);//,25);
	rect(0,0,1000,1000);
	//spear.myCenterX=mouseX;
	//spear.myCenterY=mouseY;
	if(side==false)
	{
		spearShow();
	}else if(side==true)
	{
		spearSideShow();
	}
	spearMove();
	spearSideMove();
	//spearDrill();
	
	//incrShow();
	//incrMove();
	
	//sun.show();
	//dagger.show();
	/*
	if(incrDirX.size()==5)
	{
		incrDirX.set(4,incrDirX.get(3));
		println(incrDirX.get(4));

		incrDirX.set(3,incrDirX.get(2));
		println(incrDirX.get(3));

		incrDirX.set(2,incrDirX.get(1));
		println(incrDirX.get(2));

		incrDirX.set(1,incrDirX.get(0));
		println(incrDirX.get(1));

		incrDirX.set(0,dagger.getDirectionX());
		println("increase dirX: "+incrDirX.get(0));
		println("dagger dirX: "+dagger.getDirectionX());



		incrDirY.set(4,incrDirY.get(3));
		incrDirY.set(3,incrDirY.get(2));
		incrDirY.set(2,incrDirY.get(1));
		incrDirY.set(1,incrDirY.get(0));
		incrDirY.set(0,dagger.getDirectionY());
	}
	if(incrDirX.size()==4)
	{
		incrDirX.set(3,incrDirX.get(2));
		incrDirX.set(2,incrDirX.get(1));
		incrDirX.set(1,incrDirX.get(0));
		incrDirX.set(0,dagger.getDirectionX());

		incrDirY.set(3,incrDirY.get(2));
		incrDirY.set(2,incrDirY.get(1));
		incrDirY.set(1,incrDirY.get(0));
		incrDirY.set(0,dagger.getDirectionY());
	}
	if(incrDirX.size()==3)
	{
		incrDirX.set(2,incrDirX.get(1));
		incrDirX.set(1,incrDirX.get(0));
		incrDirX.set(0,dagger.getDirectionX());

		incrDirY.set(2,incrDirY.get(1));
		incrDirY.set(1,incrDirY.get(0));
		incrDirY.set(0,dagger.getDirectionY());
	}
	if(incrDirX.size()==2)
	{
		incrDirX.set(1,incrDirX.get(0));
		incrDirX.set(0,dagger.getDirectionX());

		incrDirY.set(1,incrDirY.get(0));
		incrDirY.set(0,dagger.getDirectionY());
	}
	if(incrDirX.size()==1)
	{
		incrDirX.set(0,dagger.getDirectionX());
		incrDirY.set(0,dagger.getDirectionY());
	}
	if(incrDirX.size()==0)
	{
		incrDirX.set(0,dagger.getDirectionX());
		incrDirY.set(0,dagger.getDirectionY());
	}
	for(int i=0;i<5;i++)
	{
		incrTrail.get(i).setDirectionX(incrDirX.get(i));
		incrTrail.get(i).setDirectionY(incrDirY.get(i));
	}
	int test=incrDirX.size();
	//println(test);
	/*
	if(incrFrame%8==0)
	{
		if(incrX.size()<5)
		{
			incrX.add(0, dagger.getX());
			incrY.add(0, dagger.getY());
			incrDirX.add(0, dagger.getDirectionX());
			incrDirY.add(0, dagger.getDirectionY());
			incrPoint.add(0, (int)(dagger.getPointDirection()));
			incrTrail.add(0, new Increase());

			incrTrail.get(0).setX(incrX.get(0));
			incrTrail.get(0).setY(incrY.get(0));
			incrTrail.get(0).setDirectionX(incrDirX.get(0));
			incrTrail.get(0).setDirectionY(incrDirY.get(0));
			incrTrail.get(0).setPointDirection(incrPoint.get(0));

			incrTrail.get(1).setX(incrX.get(1));
			incrTrail.get(1).setY(incrY.get(1));
			incrTrail.get(0).setDirectionX(incrDirX.get(0));
			incrTrail.get(0).setDirectionY(incrDirY.get(0));
			incrTrail.get(0).setPointDirection(incrPoint.get(0));
			
			incrTrail.get(1).setX(incrX.get(1));
			incrTrail.get(1).setY(incrY.get(1));
			incrTrail.get(0).setDirectionX(incrDirX.get(0));
			incrTrail.get(0).setDirectionY(incrDirY.get(0));
			incrTrail.get(0).setPointDirection(incrPoint.get(0));
		}else if(incrX.size()==5)
		{
			incrX.remove(incrX.size()-1);
			incrY.remove(incrY.size()-1);
			incrPoint.remove(incrPoint.size()-1);
			incrTrail.remove(incrTrail.size()-1);
			incrX.add(0, dagger.getX());
			incrY.add(0, dagger.getY());
			incrPoint.add(0, (int)dagger.getPointDirection());
			incrTrail.add(0, new Increase());
			incrTrail.get(0).setX(incrX.get(0));
			incrTrail.get(0).setY(incrY.get(0));
			incrTrail.get(0).setPointDirection(incrPoint.get(0));
		}

	}
	incrFrame++;
	for (int h = incrDirX.size()-1; h>0;h--)
	{
		incrTrail.get(h).show();
		//println("show");
		incrTrail.get(h).move();
		//println("move");
		/*fill(206, 32, 41);
		noStroke();
		ellipse(incrX.get(h), incrY.get(h), h*4, h*4);
		noFill();
	}*/
}
public void keyPressed()
{
	switch(key){
		case 'w':
			spearAccel(5);
			spearSideAccel(5);
			incrAccel(5);
		break;
		case 's':
			spearAccel(-5);
			spearSideAccel(-5);
			incrAccel(-5);
		break;
		case 'a':
			incrTurn(-10);
			if(spin==false)
			{
				spearTurn(-10);
				spearSideTurn(-10);
			}
			if(spin==true)
			{
				if(side==false)
				{
					for(int i=0;i<20;i++)
					{
						spearTurn(-10);
						spearSideTurn(-10);
						spearSideShow();
						spearShow();
					}
				}
				if(side==true)
				{
					for(int i=0;i<20;i++)
					{
						spearTurn(-10);
						spearSideTurn(-10);
						spearShow();
						spearSideShow();
					}
				}
			}
		break;
		case 'd':
			incrTurn(10);
			if(spin==false)
			{
				spearTurn(10);
				spearSideTurn(10);
			}
			if(spin==true)
			{
				if(side==false)
				{
					for(int i=0;i<20;i++)
					{
						spearTurn(10);
						spearSideTurn(10);
						spearSideShow();
						spearShow();
					}
				}
				if(side==true)
				{
					for(int i=0;i<20;i++)
					{
						spearTurn(10);
						spearSideTurn(10);
						spearShow();
						spearSideShow();
					}
				}
			}
		break;
		case 'f':
			spearStop();
			spearSideStop();
			incrStop();
		break;
		case 'e':
			spin=!spin;
		break;
		case '1':
			side=false;
		break;
		case '2':
			side=true;
			edge++;
		break;
		case ' ':
			for(int i=0;i<40;i++)
			{
				if(i%2==0)
				{
					spearTurn(10);
					spearSideTurn(10);
					spearShow();
					spearSideShow();
				}
			}
			spear.sizeChange=1;
			for(int i=0;i<40;i++)
			{
				if(i%2==0)
				{
					spearTurn(10);
					spearSideTurn(10);
					spearShow();
					spearSideShow();
				}
			}
			spear.sizeChange=0;
			for(int i=0;i<20;i++)
			{
				if(i%2==0)
				{
					spearTurn(10);
					spearSideTurn(10);
					spearShow();
					spearSideShow();
				}
			}
			spearSetX((int)(Math.random()*1000));
			spearSetY((int)(Math.random()*1000));
			spear.sizeChange=1;
			for(int i=0;i<40;i++)
			{
				if(i%2==0)
				{
					spearTurn(10);
					spearSideTurn(10);
					spearShow();
					spearSideShow();
				}
			}
			spear.sizeChange=2;
			for(int i=0;i<40;i++)
			{
				if(i%2==0)
				{
					spearTurn(10);
					spearSideTurn(10);
					spearShow();
					spearSideShow();
				}
			}
	}
}
void incrShow()
{
	dagger.show();
}
void incrMove()
{
	dagger.move();
}
void incrAccel(int a)
{
	dagger.accelerate(a);
}
void incrTurn(int a)
{
	dagger.turn(a);
}
void incrStop()
{
	dagger.setDirectionX(0);
	dagger.setDirectionY(0);
}
void spearDrill()
{
	frame++;
	if(frame%6==0)
	{
		side=!side;
		if(side==true)
		{
	  	edge++;
		}
	}
}



void spearSideMove()
{
	spearSide.move();
	sHead.move();
	sideRightBlade.move();
	sideLeftBlade.move();
	sTCircle.move();
	sBCircle.move();
	sHPoint.move();
	sEHole.move();
}
void spearSideShow()
{
	spearSide.show();
	sHead.show();
	if(edge%2==0)
	{
		sideRightBlade.show();
	}else{
		sideLeftBlade.show();
	}
	sTCircle.show();
	sBCircle.show();
	sHPoint.show(); 
	hTop.show();
	hMid.show();
	hBot.show();
	sEHole.show();
	eTip.show();
}
void spearSideAccel(int a)
{
	spearSide.accelerate(a);
	sHead.accelerate(a);
	sideRightBlade.accelerate(a);
	sideLeftBlade.accelerate(a);
	sTCircle.accelerate(a);
	sBCircle.accelerate(a);
	sHPoint.accelerate(a);
	sEHole.accelerate(a);
}
void spearSideTurn(int a)
{
	spearSide.turn(a);
	sHead.turn(a);
	sideRightBlade.turn(a);
	sideLeftBlade.turn(a);
	sTCircle.turn(a);
	sBCircle.turn(a);
	sHPoint.turn(a);
	sEHole.turn(a);
}
void spearSideStop()
{
	spearSide.setDirectionX(0);
	spearSide.setDirectionY(0);
	sHead.setDirectionX(0);
	sHead.setDirectionY(0);
	sideRightBlade.setDirectionX(0);
	sideRightBlade.setDirectionY(0);
	sideLeftBlade.setDirectionX(0);
	sideLeftBlade.setDirectionY(0);
	sTCircle.setDirectionX(0);
	sTCircle.setDirectionY(0);
	sBCircle.setDirectionX(0);
	sBCircle.setDirectionY(0);
	sHPoint.setDirectionX(0);
	sHPoint.setDirectionY(0);
	sEHole.setDirectionX(0);
	sEHole.setDirectionY(0);
}



void spearMove()
{
	spear.move();
	rightBlade.move();
	leftBlade.move();
	head.move();
	rPCircle.move();
	lPCircle.move();
	oHHole.move();
	iHHole.move();
	hPoint.move();
	hTop.move();
	hMid.move();
	hBot.move();
	oEHole.move();
	iEHole.move();
	eTip.move();
}
void spearShow()
{
	spear.show();
	rightBlade.show();
	leftBlade.show();
	head.show();
	rPCircle.show();
	lPCircle.show();
	oHHole.show();
	iHHole.show();
	hPoint.show();
	hTop.show();
	hMid.show();
	hBot.show();
	oEHole.show();
	iEHole.show();
	eTip.show();
}
void spearAccel(int a)
{
	spear.accelerate(a);
	rightBlade.accelerate(a);
	leftBlade.accelerate(a);
	head.accelerate(a);
	rPCircle.accelerate(a);
	lPCircle.accelerate(a);
	oHHole.accelerate(a);
	iHHole.accelerate(a);
	hPoint.accelerate(a);
	hTop.accelerate(a);
	hMid.accelerate(a);
	hBot.accelerate(a);
	oEHole.accelerate(a);
	iEHole.accelerate(a);
	eTip.accelerate(a);
}
void spearSetX(int a)
{
	spear.setX(a);
	rightBlade.setX(a);
	leftBlade.setX(a);
	head.setX(a);
	rPCircle.setX(a);
	lPCircle.setX(a);
	oHHole.setX(a);
	iHHole.setX(a);
	hPoint.setX(a);
	hTop.setX(a);
	hMid.setX(a);
	hBot.setX(a);
	oEHole.setX(a);
	iEHole.setX(a);
	eTip.setX(a);
}
void spearSetY(int a)
{
	spear.setY(a);
	rightBlade.setY(a);
	leftBlade.setY(a);
	head.setY(a);
	rPCircle.setY(a);
	lPCircle.setY(a);
	oHHole.setY(a);
	iHHole.setY(a);
	hPoint.setY(a);
	hTop.setY(a);
	hMid.setY(a);
	hBot.setY(a);
	oEHole.setY(a);
	iEHole.setY(a);
	eTip.setY(a);
}
void spearTurn(int a)
{
	spear.turn(a);
	rightBlade.turn(a);
	leftBlade.turn(a);
	head.turn(a);
	rPCircle.turn(a);
	lPCircle.turn(a);
	oHHole.turn(a);
	iHHole.turn(a);
	hPoint.turn(a);
	hTop.turn(a);
	hMid.turn(a);
	hBot.turn(a);
	oEHole.turn(a);
	iEHole.turn(a);
	eTip.turn(a);
}
void spearStop()
{
	spear.setDirectionX(0);
	spear.setDirectionY(0);
	rightBlade.setDirectionX(0);
	rightBlade.setDirectionY(0);
	head.setDirectionX(0);
	head.setDirectionY(0);
	leftBlade.setDirectionX(0);
	leftBlade.setDirectionY(0);
	rPCircle.setDirectionX(0);
	rPCircle.setDirectionY(0);
	lPCircle.setDirectionX(0);
	lPCircle.setDirectionY(0);
	oHHole.setDirectionX(0);
	oHHole.setDirectionY(0);
	iHHole.setDirectionX(0);
	iHHole.setDirectionY(0);
	hPoint.setDirectionX(0);
	hPoint.setDirectionY(0);
	hTop.setDirectionX(0);
	hTop.setDirectionY(0);
	hMid.setDirectionX(0);
	hMid.setDirectionY(0);
	hBot.setDirectionX(0);
	hBot.setDirectionY(0);
	oEHole.setDirectionX(0);
	oEHole.setDirectionY(0);
	iEHole.setDirectionX(0);
	iEHole.setDirectionY(0);
	eTip.setDirectionX(0);
	eTip.setDirectionY(0);
}

