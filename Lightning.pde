int x1 = 0;
int y1 = 150;
int x2 = 0;
int y2 = 150;

void setup()
{
  size(300,300);
  strokeWeight(2);
  background(30, 10, 40);
}

void draw()
{
  while (x2 < 320)  {
    strokeWeight(3);
    stroke(70);
    line(x1, y1, x2, y2); // middle line
    strokeWeight(2);
    stroke(40);
    line(x1, y1+2, x2, y2+2); //shadow lines
    line(x1, y1-2, x2, y2-2); 
    x1 = x2;
    y1 = y2;
    x2 += (int)(Math.random()*12)+4;
    y2 += (int)(Math.random()*20)-10;
    
  }
}

void mousePressed()
{
 x1 = 0;
 y1 = 150;
 x2 = 0;
 y2 = 180;
}
