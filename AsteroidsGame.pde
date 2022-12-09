Spaceship ship = new Spaceship();
Star [] stars = new Star[200];
ArrayList <Asteroid> asteroids = new ArrayList<Asteroid>();
ArrayList <Bullet> bullets = new ArrayList<Bullet>();
ArrayList <SmallAsteroid> smallAsteroids = new ArrayList<SmallAsteroid>();

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
    float d = dist((float)ship.getX(), (float)ship.getY(), 
    (float)asteroids.get(i).getCenterX(), (float)asteroids.get(i).getCenterY());
    if(d < 15){
      for(int k = 0; k < 2; k++){
        smallAsteroids.add(new SmallAsteroid());
        smallAsteroids.get(smallAsteroids.size()-1).setX(asteroids.get(i));
        smallAsteroids.get(smallAsteroids.size()-1).setY(asteroids.get(i));
        smallAsteroids.get(smallAsteroids.size()-1).setColor(asteroids.get(i));
      }
      asteroids.remove(i);
    }
  }
  
  for(int i = 0; i < bullets.size(); i++){
    bullets.get(i).show();
    bullets.get(i).move();
  }
  
  for(int i = 0; i < smallAsteroids.size(); i++){
    smallAsteroids.get(i).show();
    smallAsteroids.get(i).move();
  }
  
  for(int i = 0; i < bullets.size(); i++){
    for(int j = 0; j < asteroids.size(); j++){
      float d = dist((float)bullets.get(i).getX(), (float)bullets.get(i).getY(),
      (float)asteroids.get(j).getCenterX(), (float)asteroids.get(j).getCenterY());
      if(d < 10){
        for(int k = 0; k < 2; k++){
          smallAsteroids.add(new SmallAsteroid());
          smallAsteroids.get(smallAsteroids.size()-1).setX(asteroids.get(j));
          smallAsteroids.get(smallAsteroids.size()-1).setY(asteroids.get(j));
          smallAsteroids.get(smallAsteroids.size()-1).setColor(asteroids.get(j));
        }
        asteroids.remove(j);
        bullets.remove(i);
        break;
      }
    }
  }
    
  for(int i = 0; i < bullets.size(); i++){
    if(smallAsteroids.size() > 0){
      for(int j = 0; j < smallAsteroids.size(); j++){
        float d = dist((float)bullets.get(i).getX(), (float)bullets.get(i).getY(),
        (float)smallAsteroids.get(j).getCenterX(), (float)smallAsteroids.get(j).getCenterY());
        if(d < 10){
          smallAsteroids.remove(j);
          bullets.remove(i);
          break;
        }
      }
    }
  }
  
  ship.show();
  ship.move();
}

public void keyPressed()
{
  if(key == 'w')
    ship.accelerate(2); 
    
  if(key == 'a')
    ship.turn(-20);

  if(key == 'd')
    ship.turn(20);

  if(key == 's')
    ship.hyperspace();

  if(key == 'e')
    bullets.add(new Bullet(ship));
}
