Spaceship ship = new Spaceship();
Star [] stars = new Star[200];

public void setup()
{
  size(500,500);
  background(0);
  for(int i = 0; i < stars.length; i++)
    stars[i] = new Star();
}
public void draw() 
{
  background(0);
  ship.show();
  ship.move();
  for(int i = 0; i < stars.length; i++)
    stars[i].show();
}
public void keyPressed()
{
  if(key == 'w')
  {
    ship.accelerate(2);
  }
  if(key == 'a')
  {
    ship.turn(-20);
  }
  if(key == 'd')
  {
    ship.turn(20);
  }
  if(key == 's')
  {
    ship.hyperspace();
  }
}
