// Jack Coogan C15729315 DT508
// Final Exam, May 2016

color sky = color(25, 240, 225);
color grass = color(80, 240, 25);

void setup()
{
  size(500, 500);
}

void draw()
{
  background(sky);
  
  noStroke();
  
  fill(grass);
  
  rect(0, height / 2, width, height);
}