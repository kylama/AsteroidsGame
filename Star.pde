class Star
{
  private double myX, myY, mySize;
  private int myColor;
  public Star(){
    myX = Math.random()*500;
    myY = Math.random()*500;
    mySize = Math.random()*3;
    myColor = color((int)(Math.random()*255),(int)(Math.random()*255),
    (int)(Math.random()*255));
  }
  public void show(){
    noStroke();
    fill(myColor);
    ellipse((float)myX, (float)myY, (float)mySize, (float)mySize);
  }
}
