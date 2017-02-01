public void setup()
{
	size(1000,600);
}
public void draw()
{
	background(0);
	quadCreation((500-mouseX)*pow(0.9,10),(300-mouseY)*pow(0.9,10),10);
}
public void quadCreation(float xSep,float ySep,int sizeRank)
{
	if(sizeRank>10)
	{
		//noStroke();
		stroke(0);
		rectMode(CENTER);
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
		quadCreation(xSep,ySep,sizeRank-1);
	}
}