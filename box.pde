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
    
    translate(position.x, position.y);
    
    fill(boxColor);
    
    rect(boxX, boxY, boxSize, boxSize);
    
    popMatrix();
  }
  
  void update()
  {
    forward.x = 0.5f;
    forward.y = 2;
      
    position.add(forward);
      
    if(position.y >= fallHeight)
    {
      println("Passed");
       
      boxLanded = true;
      
      if(boxLanded == true)
      {
        println("Done");
      }
       
      forward.x = -0.5f;
      forward.y = -2;
      
      position.add(forward);
    }
  }
}