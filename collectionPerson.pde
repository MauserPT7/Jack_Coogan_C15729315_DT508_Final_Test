class CollectionPerson extends GameObject
{
  CollectionPerson()
  {
    super();
  }
  
  CollectionPerson(float x, float y)
  {
    super(x, y);
    
    collectionPoint = PVector.lerp(currentBoxPosition, personPosition, 1);
  }
  
  void render()
  {
    pushMatrix();
    
    translate(personPosition.x, personPosition.y);
    
    fill(personColor);
    
    ellipse(personX + 5, personY - 5, 10, 10);
    rect(personX, personY, personWidth, personHeight);
    
    popMatrix();
  }
  
  void update()
  {    
    println("Person" + personPosition);
  }
  
  void collection()
  {    
    println("Collection Time");
    
    personPosition.lerp(collectionPoint, 1);
    
    println("New" + collectionPoint);
  }
}