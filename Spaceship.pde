class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 4;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;  
      xCorners[3] = -2;
      yCorners[3] = 0;
      myColor = 255;
    }
    public void setXspeed(double x){
      myXspeed = x;
    }
    public void setYspeed(double y){
      myYspeed = y;
    }
    public double getXspeed(){
      return myXspeed;
    }
    public double getYspeed(){
      return myYspeed;
    }
    public void setCenterX(250){
      myCenterX = 250;
    }
    public void setCenterY(250){
      myCenterY = 250;
    }
    public int getCenterX(){
      return myCenterX;
    }
    public int getCenterY(){
      return myCenterY;
    }
    public void setPointDirection(0){
      myPointDirection = 0;
    }
    public int getPointDirection(){
      return myPointDirection;
    }
}
