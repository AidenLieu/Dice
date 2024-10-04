void setup()
{
  noLoop();
  size(450,500);
  background(0);
}
void draw()
{
  int total = 0;
  background(0);
  for (int y = 20; y < 400; y += 60){
    for (int x = 20; x <= 380; x += 60){
      Die bob = new Die(x,y);
      bob.roll();
      bob.show();
      total += bob.value;
    }
  }
  fill(255);
  text("Sum: " + total, 200, 450);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, value;
  
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    value = (int)(Math.random() * 6 + 1);
  }
  void show()
  {
     fill(255);
     rect(myX,myY,50,50);
     fill(0);
     if (value == 1){
       ellipse(myX + 25,myY + 25,10,10);
     }else if(value == 2){
       ellipse(myX + 10,myY + 10, 10, 10);
       ellipse(myX + 40,myY + 40, 10, 10);
     }else if(value == 3){
       ellipse(myX + 10,myY + 10, 10, 10);
       ellipse(myX + 40,myY + 40, 10, 10);
       ellipse(myX + 25,myY + 25,10,10);
     }else if(value == 4){
       ellipse(myX + 10,myY + 10, 10, 10);
       ellipse(myX + 40,myY + 40, 10, 10);
       ellipse(myX + 10,myY + 40,10,10);
       ellipse(myX + 40,myY + 10,10,10);
     }else if(value == 5){
       ellipse(myX + 10,myY + 10, 10, 10);
       ellipse(myX + 40,myY + 40, 10, 10);
       ellipse(myX + 10,myY + 40,10,10);
       ellipse(myX + 40,myY + 10,10,10);
       ellipse(myX + 25,myY + 25,10,10);
     }else if(value == 6){
       ellipse(myX + 10,myY + 10, 10, 10);
       ellipse(myX + 40,myY + 40, 10, 10);
       ellipse(myX + 10,myY + 40,10,10);
       ellipse(myX + 40,myY + 10,10,10);
       ellipse(myX + 40,myY + 25,10,10);
       ellipse(myX + 10,myY + 25,10,10);
     }
  }
}
