class GameObject
{
  public PVector position;
  public PVector personPosition;
  public PVector currentBoxPosition;
  public PVector collectionPoint;

  PVector forward;

  //Airship
  color airshipColor = color(100);

  float airshipWidth = 100;
  float airshipHeight = 50;

  float tailWidth = 15;
  float tailHeight = 50;
  float tailX = -45;
  float tailY = -25;

  float engineWidth = 15;
  float engineHeight = 10;
  float engineX = -30;
  float engineY = -4;

  // CollectionPerson
  color personColor = color(235, 225, 25);

  float personX = 0;
  float personY = 0;
  float personWidth = 10;
  float personHeight = 20;

  // Box
  color boxColor = color(255, 40, 40);

  float boxX = 0;
  float boxY = 0;
  float boxSize = 10;
  float fallHeight;

  boolean boxLaunched = false;

  // Clouds
  color cloudColor = color(random(220, 255));

  float cloudSpeed;
  float cloudX, cloudY;
  float cloudSize;

  GameObject(float x, float y)
  {
    position = new PVector(x, y);
    personPosition = new PVector(x, y);
    currentBoxPosition = new PVector(x, y);
    //collectionPoint = PVector.lerp(personPosition, currentBoxPosition, 1);
    forward = new PVector(1, 0);
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

  public void collection()
  {
    
  }
}