public void setup()
{
	size(1000,600);
}
public void draw()
{
	background(0);
	quadCreation(abs(500-mouseX),abs(300-mouseY),10);
}
public void quadCreation(float xSep,float ySep,int sizeRank)
{
	if(sizeRank>0)
	{
		noStroke();
		float mainSizeX=(500-xSep);
		float mainSizeY=(300-ySep);
		float rectBarX=(mainSizeX/10);
		float rectBarY=(mainSizeY/10);
		float colorMaxR=(155*(mainSizeX/500))+100;
		float colorMaxB=(155*(mainSizeY/300))+100;
		float colorMaxG=(155*(dist(0,0,mainSizeX,mainSizeY)/dist(0,0,500,300)))+100;
		fill(colorMaxR/10*(10-sizeRank),);
		rect(500-(xSep+(rectBarX*sizeRank)),300-(ySep+(rectBarY*sizeRank)),rectBarX*sizeRank,rectBarY*sizeRank);
		rect(500-(xSep+(rectBarX*sizeRank)),300+ySep,rectBarX*sizeRank,rectBarY*sizeRank);
		rect(500+xSep,300+ySep,rectBarX*sizeRank,rectBarY*sizeRank);
		rect(500+xSep,300-(ySep+(rectBarY*sizeRank)),rectBarX*sizeRank,rectBarY*sizeRank);
		quadCreation(xSep,ySep,sizeRank-1);
	}
}