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
      myCenterX = 250;
      myCenterY = 250;
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
    public void setCenterX(int x){
      myCenterX = x;
    }
    public void setCenterY(int y){
      myCenterY = y;
    }
    public double getCenterX(){
      return myCenterX;
    }
    public double getCenterY(){
      return myCenterY;
    }
    public void setPointDirection(double y){
      myPointDirection = y;
    }
    public double getPointDirection(){
      return myPointDirection;
    }
}

