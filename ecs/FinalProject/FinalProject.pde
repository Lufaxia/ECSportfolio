// Sharon Z | Apr 26, 2023 | Final Project
boolean play;
int x, ss, ii, mill, a, b, m, s, Life;
int d, d2, d3, d4, M;
PImage Bg, end, start;
Player bomb;
Fireball flame, flame2;
Fireball2 flare, flare2;
mini mini;

void setup() {
  size(1200, 800);
  play = false;
  bomb = new Player();
  flame = new Fireball();
  flame2 = new Fireball();
  flare = new Fireball2();
  flare2 = new Fireball2();
  mini= new mini();
  ss=0;
  Life=0;
}

void draw() {
  if (!play) {
    startScreen();
  } else {
    d = int(dist(bomb.x, bomb.y, flame.x, flame.y));
    d2 = int(dist(bomb.x, bomb.y, flare.x, flare.y));
    d3 = int(dist(bomb.x, bomb.y, flame2.x, flame2.y));
    d4 = int(dist(bomb.x, bomb.y, flare2.x, flare2.y));
    M = int(dist(bomb.x, bomb.y, mini.x, mini.y));
    drawBackground();
    bomb.display();
    mini.display();
    flame.display();
    flame.move();
    flare.display();
    flare.move();
    bomb.move(x, 700);
    if (s>5 ||m>0) {
      flame.move();
      flame2.display();
      flame2.move();
    }
    if (s>10 ||m>0) {
      flare.move();
      flare2.display();
      flare2.move();
    }
    if (s>20 ||m>0) {
      flame.move();
      flare.move();
      flame2.move();
      flare2.move();
    }
    infoPanel();
    m = millis();
    textSize(25);
    if (ii==0) {
      mill=millis()/1000;
      m=mill/60;
      s=mill%60;
      a=m;
      b=s;
    }
    if (ii==2) {
      mill=(millis()-ss)/1000;
      m=mill/60;
      s=mill%60;
      a=m;
      b=s;
    }
    if (d<100) {
      flame.y=20;
      if (s>15 || m>0) {
        Life = Life-2;
      } else Life = Life-1;
    }
    if (d2<100) {
      flare.y=20;
      if (s>15 || m>0) {
        Life = Life-2;
      } else Life = Life-1;
    }
    if (d3<100) {
      flame2.y=20;
      if (s>15 || m>0) {
        Life = Life-2;
      } else Life = Life-1;
    }
    if (d4<100) {
      flare2.y=20;
      if (s>15 || m>0) {
        Life = Life-2;
      } else Life = Life-1;
    }
    if (M<60) {
      Life = Life+1;
      mini.x = (random(width));
    }
    if (Life<0) {
      gameOver();
    }

    if (keyPressed) {
      if (key == 'a' || key == 'A') {
        x = x - 10;
      }
      if (key == 'd' || key == 'D') {
        x = x + 10;
      }
    }
    if (x>width) {
      x = 0;
    }
    if (x<0) {
      x = width;
    }
  }
}

void keyPressed() {
  if (keyCode == ' ') {
    play = true;
  }
}
void drawBackground() {
  Bg = loadImage("Bg.png.png");
  Bg.resize(1300, 830);
  image(Bg, 620, 370);
}

void startScreen() {
  start = loadImage("start.png");
  start.resize(1200, 800);
  image(start, 0, 0);
  textAlign(CENTER);

  textSize(64);
  text("Welcome to Don't Blow Up", 600, 250);
  textSize(44);
  text("by Sharon Z", width/2, 300);
  text("Press Space to Start", width/2, 600);
  ii=2;
  ss=millis();
}

void gameOver() {
  end = loadImage("end.png");
  end.resize(1200, 800);
  image(end, 600, 400);
  textAlign(CENTER);
  fill(230);
  textSize(64);
  text("Game Over", width/2, 300);
  textSize(44);
  if (s>9) {
    text("Time Lasted:" + a + ":" +b, width/2, 400);
  }
  if (s<10) {
    text("Time Lasted:" + a + ":0" +b, width/2, 400);
  }
  ii=1;
  noLoop();
}
void infoPanel() {
  fill(#CB565A, 125);
  rect(10, 0, 165, 25);
  textAlign(LEFT);
  textSize(25);
  fill(250);
  if (s>9) {
    text(a + ":" +b, 23, 20);
  }
  if (s<10) {
    text(a + ":0" +b, 23, 20);
  }
  text("Lives:" +Life, 80, 20);
}
