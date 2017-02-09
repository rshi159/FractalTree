private double fractionLength = .6; 
private int smallestBranch = 4; 
private double branchAngle = 1;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	drawBranches(320,380,100,3*PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1,angle2,angle3;
	angle1 = angle + branchAngle;
	angle2 = angle - branchAngle;
	angle3 = angle;
	if(branchLength<=smallestBranch)
	{
		ellipse(x,y,.5,.5);
	}
	else
	{
	int endX1 = (int)(branchLength*Math.cos(angle1) + x); 
	int endY1 = (int)(branchLength*Math.sin(angle1) + y); //your code here  
	line(x,y,endX1,endY1);
	int endX2 = (int)(branchLength*Math.cos(angle2) + x); 
	int endY2 = (int)(branchLength*Math.sin(angle2) + y); //your code here  
	line(x,y,endX2,endY2);
	int endX3 = (int)(branchLength*Math.cos(angle3) + x);
	int endY3 = (int)(branchLength*Math.sin(angle3) + y);
	line(x,y,endX3,endY3);
	drawBranches(endX1,endY1,branchLength*fractionLength,angle1);
	drawBranches(endX2,endY2,branchLength*fractionLength,angle2);
	drawBranches(endX3,endY3,branchLength*(fractionLength+.1),angle);
	} 
}
