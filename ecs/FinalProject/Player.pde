class Player {
  int x, y;
  PImage player1;

  Player() {
    x=0;
    y=700;
    
    player1 = loadImage("Chara1.png");
  }

  void display() {
    imageMode(CENTER);
    player1.resize(200,200);
    image (player1, x, y);
  }

  void move(int CX, int CY) {
    x = CX;
    y = CY;
  }
}
