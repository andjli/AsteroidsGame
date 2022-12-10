class Bullet extends Floater{
  public Bullet(Spaceship joe){
    myCenterX = joe.getCenterX();
    myCenterY = joe.getCenterY();
    myXspeed = joe.getXspeed();
    myYspeed = joe.getYspeed();
    myPointDirection = joe.getPointDirection();
    accelerate(.6);
  }
  public double getCenterX(){
    return myCenterX;
  public double getCenterY(){
    return myCenterY;
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY,10,10);
  }
}

