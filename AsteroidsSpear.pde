//your variable declarations 
Chastiefol spear;
ChastiefolSide spearSide;
RightBlade rBlade;
SideRightBlade sRBlade;
LeftBlade lBlade;
SideLeftBlade sLBlade;
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
boolean spin=false, side=true;
int edge=0,frame=0, form=1;
boolean spin=false, side=true, topBot=false;
int edge=0,frame=0, form=1,shade=0;
public void setup() 
{
  size(1000,1000);
  background(0,0,0);
  frameRate(6000);
  spear=new Chastiefol();
  spearSide=new ChastiefolSide();
  rBlade=new RightBlade();
  sRBlade=new SideRightBlade();
  lBlade=new LeftBlade();
  sLBlade=new SideLeftBlade();
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
}
public void draw() 
{
  fill(0,0,0,50);//,25);
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
  dagger.show();
  sun.show();
  //dagger.show();
}
public void keyPressed()
{
	switch(key){
		case 'w':
			spearAccel(5);
			spearSideAccel(5);
		break;
		case 's':
			spearAccel(-5);
			spearSideAccel(-5);
		break;
		case 'a':
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
	sRBlade.move();
	sLBlade.move();
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
		sRBlade.show();
	}else{
		sLBlade.show();
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
	sRBlade.accelerate(a);
	sLBlade.accelerate(a);
	sTCircle.accelerate(a);
	sBCircle.accelerate(a);
	sHPoint.accelerate(a);
	sEHole.accelerate(a);
}
void spearSideTurn(int a)
{
	spearSide.turn(a);
	sHead.turn(a);
	sRBlade.turn(a);
	sLBlade.turn(a);
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
	sRBlade.setDirectionX(0);
	sRBlade.setDirectionY(0);
	sLBlade.setDirectionX(0);
	sLBlade.setDirectionY(0);
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
	rBlade.move();
	lBlade.move();
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
	rBlade.show();
	lBlade.show();
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
	rBlade.accelerate(a);
	lBlade.accelerate(a);
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
	rBlade.setX(a);
	lBlade.setX(a);
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
	rBlade.setY(a);
	lBlade.setY(a);
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
	rBlade.turn(a);
	lBlade.turn(a);
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
	rBlade.setDirectionX(0);
	rBlade.setDirectionY(0);
	head.setDirectionX(0);
	head.setDirectionY(0);
	lBlade.setDirectionX(0);
	lBlade.setDirectionY(0);
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

