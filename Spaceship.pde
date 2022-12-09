class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 15;
      xCorners = new int[]{16, 5, 0, -10, -3, -2, -11, -14, -14, -11, -2, -3, -10, 0, 5};
      yCorners = new int[]{0, 4, 10, 10, 8, 4, 2, 4, -4, -2, -4, -8, -10, -10, -4};
      myColor = color(255);
      myCenterX = myCenterY = 250;
      myXspeed = myYspeed = 0;
      myPointDirection = 0;
    }
    public void setXspeed(double x){
      myXspeed = x;
    }
    public double getXspeed(){
      return myXspeed;
    }
    public void setYspeed(double y){
      myYspeed = y;
    }
    public double getYspeed(){
      return myYspeed;
    }
    public void setPointDirection(double a){
      myPointDirection = a;
    }
    public double getPointDirection(){
      return myPointDirection;
    }
    public void hyperspace(){
      myXspeed = 0;
      myYspeed = 0;
      myCenterX = Math.random()*500;
      myCenterY = Math.random()*500;
      myPointDirection = Math.random()*360;
    }
    public double getX(){
      return myCenterX;
    }
    public double getY(){
      return myCenterY;
    }
}
