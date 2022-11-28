Spaceship joe = new Spaceship();
Star[] bob = new Star[200];
public void setup() 
{
  size(500,500);
  for(int i = 0; i < bob.length; i++){
    bob[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  joe.show();
  joe.move();
  for(int i = 0; i < bob.length; i++){
    bob[i].show();
  }
}
public void keyPressed(){
  if(key == 'h'){
    joe.setXspeed(0);
    joe.setYspeed(0);
    joe.setCenterX((int)(Math.random()*500));
    joe.setCenterY((int)(Math.random()*500));
    joe.setPointDirection((int)(Math.random()*360));
  }
  if(key == 'w'){
    joe.accelerate(0.25);
  }
  if(key == 'a'){
    joe.turn(-10);
  }
  if(key == 'd'){
    joe.turn(10);
  }
}
