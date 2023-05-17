// Sharon Z || April 7, 2023 || Etch-A-Sketch
int x, y;
PImage pic; 

void setup() {
  size(800, 658);
  background(225);
 
  pic = loadImage("Etch.png");
  x = width/2;
  y = height/2;
}

void draw() {
  image(pic,0,0);
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      moveUp(1);
    }
    if (key == 's' || key == 'S') {
      moveDown(1);
    }
    if (key == 'a' || key == 'A') {
      moveLeft(1);
    }
    if (key == 'd' || key == 'D') {
      moveRight(1);
    }
  }
}

void mousePressed() { //saving img
saveFrame("line-######.png");
}

void keyPressed() { //drawing lines
  if (key == CODED) {
    if (keyCode == UP) {
      strokeWeight(2);
    } else if (keyCode == DOWN) {
      strokeWeight(1.5);
    } else if (keyCode == LEFT) {
      stroke(225);
      strokeWeight(3);
    } else if (keyCode == RIGHT) {
      stroke(1);
      strokeWeight(1);
    }
      else if (keyCode == SHIFT)
      background(225);
    }
  }
void moveUp(int rep) {
  for (int i = 0; i<rep; i = i + 1) {
    point(x, y-i);
    y = y - rep;
  }
}
void moveDown(int rep) {
  for (int i = 0; i<rep; i = i + 1) {
    point(x, y+i);
    y = y + rep;
  }
}
void moveLeft(int rep) {
  for (int i = 0; i<rep; i = i + 1) {
    point(x-i, y);
    x = x - rep;
  }
}
void moveRight(int rep) {
  for (int i = 0; i<rep; i = i + 1) {
    point(x+i, y);
    x = x + rep;
  }
}
