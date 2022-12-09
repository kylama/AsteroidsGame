class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    corners = 5;
    xCorners = new int[]{1, 3, 1, -2, -2};
    yCorners = new int[]{-1, 0, 1, 1, -1};
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getPointDirection();
    myColor = color(200);
    accelerate(6.0);
  }
  
  public double getX(){
    return myCenterX;
  }
  
  public double getY(){
    return myCenterY;
  }
}
