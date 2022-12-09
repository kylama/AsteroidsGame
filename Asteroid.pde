class Asteroid extends Floater{
  private double rotSpeed;
  Asteroid(){
    corners = 10;
    xCorners = new int[corners];  //{-8, -2, 3, 7, 14, 7, 4, -2, -8, -14};
    xCorners[0] = (int)(Math.random()*5)-10;
    xCorners[1] = (int)(Math.random()*5)-4;
    xCorners[2] = (int)(Math.random()*5)+1;
    xCorners[3] = (int)(Math.random()*5)+5;
    xCorners[4] = (int)(Math.random()*5)+10;
    xCorners[5] = (int)(Math.random()*5)+5;
    xCorners[6] = (int)(Math.random()*5)+2;
    xCorners[7] = (int)(Math.random()*5)-4;
    xCorners[8] = (int)(Math.random()*5)-10;
    xCorners[9] = (int)(Math.random()*5)-10;
      
    yCorners = new int[corners];  //{-8, -10, -13, -9, 0, 8, 10, 9, 8, 0};
    yCorners[0] = (int)(Math.random()*5)-10;
    yCorners[1] = (int)(Math.random()*5)-12;
    yCorners[2] = (int)(Math.random()*5)-15;
    yCorners[3] = (int)(Math.random()*5)-11;
    yCorners[4] = (int)(Math.random()*5)-2;
    yCorners[5] = (int)(Math.random()*5)+6;
    yCorners[6] = (int)(Math.random()*5)+8;
    yCorners[7] = (int)(Math.random()*5)+7;
    yCorners[8] = (int)(Math.random()*5)+6;
    yCorners[9] = (int)(Math.random()*5)-2;
    
    myColor = color((float)(Math.random()*206)+50);
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myXspeed = Math.random()*4-2;
    myYspeed = Math.random()*4-2;
    myPointDirection = Math.random()*2;
    rotSpeed = Math.random()*4-2;
  }
  
  public void move(){
    super.move();
    super.turn(rotSpeed);
  }
  
  public double getCenterX(){
    return myCenterX;
  }
  
  public double getCenterY(){
    return myCenterY;
  }
  
  public color getColor(){
    return myColor;
  }
}
