class Fireball {
  float x;
  int y;
  PImage fireball1, coll;

  Fireball() {
    x= (random(width));
    y=20;
    fireball1 = loadImage("Fireball1.gif");
    coll = loadImage("CFloor.png");
  }

  void display() {
    imageMode(CENTER);
    image (fireball1, x, y);
  }
  void move () {
    y = y + 7;
    if (y>600) {
      loadImage("CFloor.png");
      image(coll, x, y);
    }
    if (y>675) {
      y = 20;
      x= (random(width));
    }
  }
}
