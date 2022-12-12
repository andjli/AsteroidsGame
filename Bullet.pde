class Bullet extends Floater{
  public Bullet(Spaceship joe){
    myCenterX = joe.getCenterX();
    myCenterY = joe.getCenterY();
    myXspeed = joe.getXspeed();
    myYspeed = joe.getYspeed();
    myPointDirection = joe.getPointDirection();
    accelerate(.6);
  }
  public double getX(){
    return myCenterX;}
  public double getY(){
    return myCenterY;}
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY,10,10);
  }
}

