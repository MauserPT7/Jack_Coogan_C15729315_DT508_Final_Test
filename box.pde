class Box extends GameObject
{
  Box()
  {
    super();
  }
  
  Box(float x, float y)
  {
    super(x, y);
    
    fallHeight = random(300, 470);
    
    boxLanded = false;
  }
  
  void render()
  {
    pushMatrix();
    
    translate(currentBoxPosition.x, currentBoxPosition.y);
    
    fill(boxColor);
    
    rect(boxX, boxY, boxSize, boxSize);
    
    popMatrix();
  }
  
  void update()
  {
    forward.x = 0.5f;
    forward.y = 2;
      
    currentBoxPosition.add(forward);
      
    if(currentBoxPosition.y >= fallHeight)
    {
      println("Passed Height");
       
      boxLanded = true;
      
      if(boxLanded == true)
      {
        println("Landed");
      }
       
      forward.x = 0.5f;
      forward.y = 2;
      
      currentBoxPosition.sub(forward);
      
      println("Box" + currentBoxPosition);
    }
  }
}