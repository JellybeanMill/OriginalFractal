float redCol;
float greenCol;
float blueCol;
float colorDirection;
public void setup()
{
	size(1000,600);
}
public void draw()
{
	background(0);
	colorDirection = atan2(mouseY-300,mouseX-500);
	if(colorDirection>=-PI&&colorDirection<-PI/3.0)
	{
		redCol = (1-((colorDirection+PI)/(2/3*PI)))*255;
		greenCol = ((colorDirection+PI)/(2/3*PI))*225;
		blueCol = 0;
	}
	else if(colorDirection>=-PI/3.0&&colorDirection<=PI/3.0)
	{
		redCol = 0;
		greenCol = (1-((colorDirection+(PI/3))/(2/3*PI)))*255;
		blueCol = ((colorDirection+(PI/3))/(2/3*PI))*225;
	}
	else if(colorDirection>PI/3.0&&colorDirection<=PI)
	{
		redCol = (colorDirection/(2/3*PI))*255;
		greenCol = 0;
		blueCol = (1-(colorDirection/(2/3*PI)))*255;
	}
	println("colorDirection: "+colorDirection);
	println("redCol: "+redCol);
	println("greenCol: "+greenCol);
	println("blueCol: "+blueCol);
	quadCreation((500-mouseX),(300-mouseY),1,redCol,greenCol,blueCol);
}
public void quadCreation(float xSep,float ySep,float sizeRank,float colR,float colG,float colB)
{
	if(sizeRank<10)
	{
		//noStroke();
		quadCreation(xSep*pow(0.955,sizeRank),ySep*pow(0.955,sizeRank),sizeRank+1,colR*0.85,colG*0.85,colB*0.85);
		stroke(0);
		rectMode(CENTER);
		fill(colR,colG,colB);
		rect(500-xSep,300-ySep,sizeRank*100,sizeRank*60);
		/*
		float mainSizeX=(500-xSep);
		float mainSizeY=(300-ySep);
		float rectBarX=(mainSizeX/10);
		float rectBarY=(mainSizeY/10);
		rect(500-(xSep+(rectBarX*sizeRank)),300-(ySep+(rectBarY*sizeRank)),rectBarX*sizeRank,rectBarY*sizeRank);
		rect(500-(xSep+(rectBarX*sizeRank)),300+ySep,rectBarX*sizeRank,rectBarY*sizeRank);
		rect(500+xSep,300+ySep,rectBarX*sizeRank,rectBarY*sizeRank);
		rect(500+xSep,300-(ySep+(rectBarY*sizeRank)),rectBarX*sizeRank,rectBarY*sizeRank);
		*/
	}
}