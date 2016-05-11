// Jack Coogan C15729315 DT508
// Final Exam, May 2016

Airship airship;

ArrayList < GameObject > gameObjects = new ArrayList < GameObject > ();

boolean[] keys;

color skyColor = color(25, 240, 225);
color grassColor = color(80, 240, 25);

float airplaneAltitude = 100;

void setup()
{
  size(500, 500);
  
  gameObjects.add(new Airship(0, airplaneAltitude));
  
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
}