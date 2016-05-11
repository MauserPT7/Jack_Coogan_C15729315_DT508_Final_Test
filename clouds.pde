class Clouds extends GameObject
{
  Clouds()
  {
    super();
  }
  
  Clouds(float x, float y)
  {
    super(x, y);
    
    cloudSize = random(30, 50);
    cloudX = random(0, width);
    cloudY = random(0, cloudAltitude);
  }
  
  void render()
  {
    pushMatrix();
    
    translate(position.x, position.y);
    
    ellipse(cloudX, cloudY, cloudSize, cloudSize);
    
    popMatrix();
  }
  
  void update()
  {
    forward.x = -1;
    
    position.add(forward);
    
    if(position.x <= -30)
    {
      position.x = width + 30;
    }
  }
}