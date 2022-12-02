Spaceship ship = new Spaceship();
Star [] stars = new Star[200];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();

public void setup()
{
  size(500,500);
  background(0);
  for(int i = 0; i < stars.length; i++)
    stars[i] = new Star();
  for(int i = 0; i < 10; i++)
    asteroids.add(new Asteroid());
}
public void draw() 
{
  background(0);
  for(int i = 0; i < stars.length; i++)
    stars[i].show();
  for(int i = 0; i < asteroids.size(); i++){
    asteroids.get(i).show();
    asteroids.get(i).move();
    float d = dist((float)(ship.getX()), (float)(ship.getY()), 
    (float)asteroids.get(i).getCenterX(), (float)asteroids.get(i).getCenterY());
    if(d < 15)
      asteroids.remove(i);
  }
  ship.show();
  ship.move();
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
