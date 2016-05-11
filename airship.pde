class Airship extends GameObject
{
  Airship()
  {
    super();
  }
  
  Airship(float x, float y)
  {
    super(x, y);
  }
  
  void render()
  {
    
  }
  
  void update()
  {
    strokeWeight(5);
    
    fill(airshipColor);
    
    rect(0, 0, 20, 10);
    ellipse(0, 0, airshipWidth, airshipHeight);
  }
}