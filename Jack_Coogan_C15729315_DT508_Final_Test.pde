// Jack Coogan C15729315 DT508
// Final Exam, May 2016

Airship airship;
CollectionPerson collectionPerson;
Cloud cloud;

ArrayList < GameObject > gameObjects = new ArrayList < GameObject > ();
ArrayList < Clouds > clouds = new ArrayList < Clouds > (5);

boolean[] keys;

color skyColor = color(25, 240, 225);
color grassColor = color(80, 240, 25);
color textColor = color(50);

float airplaneAltitude = 100;

int score;

void setup()
{
  size(500, 500);
  smooth();
  
  gameObjects.add(new Airship(-30, airplaneAltitude));
  gameObjects.add(new CollectionPerson(50, 450));
  
  for(int i = 0 ; i < clouds.size() ; i++)
  {
    Clouds clouds = clouds.get(i);
    Clouds.render();
    Clouds.update();
  }
  
  keys = new boolean[1];
  keys[0] = false; // Spacebar
}

void draw()
{
  background(skyColor);
  
  noStroke();
  
  fill(grassColor);
  
  rect(0, height / 2, width, height);
  
  for(int i = 0 ; i < gameObjects.size() ; i++)
  {
    GameObject gameObject = gameObjects.get(i);
    gameObject.update();
    gameObject.render();
  }
  
  fill(textColor);
    
  text("Score: " + score, 20, 20);
}