private double fractionLength = .6; 
private int smallestBranch = 4; 
private double branchAngle = 1.2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(30);   
	//stroke(0,255,0);  
	stroke(255); 
	line(320,480,320,380);   
	drawBranches(320,380,100,3*PI/2,255);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle,int alp) 
{   
	double angle1,angle2,angle3;
	angle1 = angle + branchAngle+.1*Math.random();
	angle2 = angle - branchAngle+.1*Math.random();
	angle3 = angle+.1*Math.random();
	if(branchLength<=smallestBranch)
	{
		fill(255,0,0);
		ellipse(x,y,.5,.5);
	}
	else
	{
		stroke(255,255,255,alp);
	int endX1 = (int)(branchLength*Math.cos(angle1) + x); 
	int endY1 = (int)(branchLength*Math.sin(angle1) + y); //your code here  
	line(x,y,endX1,endY1);
	int endX2 = (int)(branchLength*Math.cos(angle2) + x); 
	int endY2 = (int)(branchLength*Math.sin(angle2) + y); //your code here  
	line(x,y,endX2,endY2);
	int endX3 = (int)(branchLength*Math.cos(angle3) + x);
	int endY3 = (int)(branchLength*Math.sin(angle3) + y);
	line(x,y,endX3,endY3);
	drawBranches(endX1,endY1,branchLength*(fractionLength+.03*Math.random()),angle1,alp-35);
	drawBranches(endX2,endY2,branchLength*(fractionLength+.03*Math.random()),angle2,alp-35);
	drawBranches(endX3,endY3,branchLength*((fractionLength+.03*Math.random())+.1),angle,alp-35);
	} 
}
