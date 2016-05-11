class Box extends GameObject
{
  Box()
  {
    super();
  }
  
  Box(float x, float y)
  {
    super(x, y);
  }
  
  void render()
  {
    pushMatrix();
    
    translate(position.x, position.y);
    
    fill(boxColor);
    
    rect(boxX, boxY, boxSize, boxSize);
    
    popMatrix();
  }
  
  void update()
  {
    
  }
}