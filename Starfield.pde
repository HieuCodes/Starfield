Particle[] bob = new Particle[500];
OddballParticle sue = new OddballParticle();
PImage img;
void setup()
{
  img = loadImage("Nyan-Cat-PNG-Image.png");
  size(500,500);
  for (int i = 0; i < bob.length; i++)
  {
    bob[i] = new Particle();
  }
}
void draw()
{
  background(0);
  for (int i = 0; i < bob.length; i++)
  {
    bob[i].move();
    bob[i].show();
  }
    sue.move();
    sue.show();
}
class Particle
{
 int myColor;
 double myX;
 double myY;
 double myAngle;
 double mySpeed;
 double mySize;
 Particle()
 {
   myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   myX = 250;
   myY = 250;
   myAngle = Math.random()*2*Math.PI;
   mySize = 0;
   mySpeed = Math.random()*3+2;
 }
void move()
{
  myX =  myX + Math.cos(myAngle)* mySpeed;
  myY =  myY +Math.sin(myAngle)* mySpeed;
  mySize = mySize + 0.05;
  if (myX < 0 || myX > 500)
    {
      myX = 250;
      myY = 250;
      myX =  myX + Math.cos(myAngle)* mySpeed;
      myY =  myY +Math.sin(myAngle)* mySpeed;
      mySize = 0;
    }
    if (myY < 0 || myY > 500)
    {
      myY = 250;
      myX = 250;
      myX =  myX + Math.cos(myAngle)* mySpeed;
      myY =  myY +Math.sin(myAngle)* mySpeed;
      mySize = 0;
    }
}
void show()
{
  fill(myColor);
  stroke(myColor);
  ellipse((float)(myX),(float)(myY),(float)mySize,(float)mySize);
}
}
class OddballParticle extends Particle
{
  void move()
  {
    myX = myX + (Math.random()*6-3);
    myY = myY + (Math.random()*6-3);
    if (myX < 0 || myX > 500)
    {
      myX = 250;
      myY = 250;
    }
    if (myY < 0 || myY > 500)
    {
      myY = 250;
      myX = 250;
    }
  }
  void show()
  {
    noStroke();
    image(img,(float)myX,(float)myY,50,25);
  }
}
