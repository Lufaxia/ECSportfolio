class mini {
  float x;
  int y;
  PImage mini;

  mini() {
    x= (random(width));
    y=720;
    mini= loadImage("mini.png");
  }

  void display() {
    imageMode(CENTER);
    mini.resize(100,100);
    image (mini, x, y);
  }
}
