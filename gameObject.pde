class GameObject
{
  public PVector position;
  
  //Airship
  color airshipColor = color(100);
  
  float airshipWidth = 50;
  float airshipHeight = 25; 
  
  GameObject(float x, float y)
  {
    position = new PVector(x, y);
  }
  
  GameObject()
  {
    this(0, 0);
  }
  
  public void render()
  {
    
  }
  
  public void update()
  {
    
  }
}