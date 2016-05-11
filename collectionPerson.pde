class CollectionPerson extends GameObject
{
  CollectionPerson()
  {
    super();
  }
  
  CollectionPerson(float x, float y)
  {
    super(x, y);
  }
  
  void render()
  {
    pushMatrix();
    
    translate(position.x, position.y);
    
    fill(personColor);
    
    ellipse(personX + 5, personY - 5, 10, 10);
    rect(personX, personY, personWidth, personHeight);
    
    popMatrix();
  }
  
  void update()
  {
    
  }
}