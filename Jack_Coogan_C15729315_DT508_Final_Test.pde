// Jack Coogan C15729315 DT508
// Final Exam, May 2016

ArrayList < GameObject > gameObjects = new ArrayList < GameObject > ();

boolean[] keys;

color skyColor = color(25, 240, 225);
color grassColor = color(80, 240, 25);

void setup()
{
  size(500, 500);
  
  keys = new boolean[1];
  keys[0] = false; // Spacebar
}

void draw()
{
  background(skyColor);
  
  noStroke();
  
  fill(grassColor);
  
  rect(0, height / 2, width, height);
}