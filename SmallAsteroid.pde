class SmallAsteroid extends Asteroid{
  SmallAsteroid(){
    super();
    xCorners[0] = xCorners[0]/2;
    xCorners[1] = xCorners[1]/2;
    xCorners[2] = xCorners[2]/2;
    xCorners[3] = xCorners[3]/2;
    xCorners[4] = xCorners[4]/2;
    xCorners[5] = xCorners[5]/2;
    xCorners[6] = xCorners[6]/2;
    xCorners[7] = xCorners[7]/2;
    xCorners[8] = xCorners[8]/2;
    xCorners[9] = xCorners[9]/2;
    
    yCorners[0] = yCorners[0]/2;
    yCorners[1] = yCorners[1]/2;
    yCorners[2] = yCorners[2]/2;
    yCorners[3] = yCorners[3]/2;
    yCorners[4] = yCorners[4]/2;
    yCorners[5] = yCorners[5]/2;
    yCorners[6] = yCorners[6]/2;
    yCorners[7] = yCorners[7]/2;
    yCorners[8] = yCorners[8]/2;
    yCorners[9] = yCorners[9]/2;
  }
  
  public void setX(Asteroid a){
    myCenterX = a.getCenterX();
  }
  
  public void setY(Asteroid a){
    myCenterY = a.getCenterY();
  }
  
  public void setColor(Asteroid a){
    myColor = a.getColor();
  }
}
