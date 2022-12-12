Spaceship joe = new Spaceship();
Star[] bob = new Star[200];
ArrayList <Asteroid> asteroid = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
public void setup() 
{
  size(500,500);
  for(int i = 0; i < bob.length; i++){
    bob[i] = new Star();
  }
  for(int i = 0; i < 10; i++){
    asteroid.add(new Asteroid());
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
  for(int i = 0; i<shots.size(); i++){
    shots.get(i).move();
    shots.get(i).show();
  }
  for(int i = 0; i < asteroid.size(); i++){
    asteroid.get(i).show();
    asteroid.get(i).move();
    float distance = dist((float)asteroid.get(i).getCenterX(), (float)asteroid.get(i).getCenterY(), (float)joe.getCenterX(),(float)joe.getCenterY());
    if(distance < 20){
      asteroid.remove(i);
    }
  }
  for(int i = 0; i< shots.size(); i++){
    for(int j = 0; j<asteroid.size();j++){
      float bulletDist = dist((float)shots.get(i).getX(), (float)shots.get(i).getY(), (float)asteroid.get(j).getCenterX(),(float)asteroid.get(j).getCenterY());
    if(bulletDist < 20){
      shots.remove(i);
      asteroid.remove(j);
      break;
    }
    }
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
  else if(key == 'a'){
    joe.turn(-10);
  }
  else if(key == 'd'){
    joe.turn(10);
  }
  else if(key == 'r'){
    shots.add(new Bullet(joe));
}
}


