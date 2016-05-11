class Cloud extends GameObject
{
  Cloud()
  {
    super();
  }
  
  Cloud(float x, float y)
  {
    super(x, y);
    
    cloudSize = random(25, 50);
    cloudSpeed = random(-0.5f, -1.5f);
  }
  
  void render()
  {
    pushMatrix();
    
    translate(position.x, position.y);
    
    noStroke();
    
    fill(cloudColor);
    
    ellipse(cloudX, cloudY, cloudSize, cloudSize);
    ellipse(cloudX - 15, cloudY, cloudSize - 8, cloudSize - 8);
    ellipse(cloudX + 15, cloudY, cloudSize - 12, cloudSize - 12);
    
    popMatrix();
  }
  
  void update()
  {
    forward.x = cloudSpeed;
    
    position.add(forward);
    
    if(position.x <= -30)
    {
      position.x = width + 30;
    }
  }
}