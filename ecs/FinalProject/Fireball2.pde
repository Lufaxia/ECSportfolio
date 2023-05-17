class Fireball2 {
  float x;
  int y;
  PImage fireball2, coll2;

  Fireball2() {
    x= (random(width));
    y=20;
    fireball2 = loadImage("Fireball2.png");
    coll2 = loadImage("CFloor.png");
  }

  void display() {
    imageMode(CENTER);
    if (y<600) {
      image (fireball2, x, y);
    } else if (y>600) {
      image (coll2, x, y);
    }
  }
  void move () {
    y = y + 7;
    if (y>670) {
      y = 20;
      x= (random(width));
    }
  }
}
