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
    pushMatrix();
    
    translate(position.x, position.y);
    
    strokeWeight(3);
    stroke(0);
    
    fill(airshipColor);
    
    rect(tailX, tailY, tailWidth, tailHeight);
    ellipse(0, 0, airshipWidth, airshipHeight);
    rect(engineX, engineY, engineWidth, engineHeight);
    rect(engineX + 45, engineY, engineWidth, engineHeight);
    
    popMatrix();
  }
  
  void update()
  {
    forward.x = 1;
    
    position.add(forward);
    
    if(position.x >= width + 70)
    {
      position.x = -120;
    }
    
    if(keys[0]
    && boxLaunched == false)
    {
      boxLaunched = true;
      
      Box box = new Box(position.x, position.y);
      
      boxes.add(box);
    }
  }
}