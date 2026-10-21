Ball[] ballen = new Ball[5];

float paddleWidth = 100;
float paddleHeight = 20;
int score = 0;

void setup() {
  size(400, 400);

  for (int i = 0; i < ballen.length; i++) {
    ballen[i] = new Ball();
  }
}

void draw() {
  background(255, 255, 255);

  float paddleX = mouseX - (paddleWidth / 2);
  float paddleY = height - 30;
  
  fill(64, 224, 208);
  rect(paddleX, paddleY, paddleWidth, paddleHeight);

  fill(0); 
  textSize(20);
  text("Score: " + score, 20, 30);

  for (int i = 0; i < ballen.length; i++) {
    ballen[i].move();
    ballen[i].display();
    ballen[i].resetAlsUitBeeld();
    ballen[i].raaktPaddle(paddleX, paddleY, paddleWidth);
  }
}

class Ball {
  float x;
  float y;
  float diameter;
  float speed;
  float r, g, b;

  Ball() {
    x = random(width);
    y = random(-200, 0);
    diameter = random(30, 50);
    speed = random(2, 4);
    
    r = random(0, 255);
    g = random(0, 255);
    b = random(0, 255);
  }

  void display() {
    fill(r, g, b);
    circle(x, y, diameter);
  }

  void move() {
    y = y + speed;
  }

  void resetAlsUitBeeld() {
    if (y > height + (diameter / 2)) {
      y = -diameter;
      x = random(width);
    }
  }

  void raaktPaddle(float paddleX, float paddleY, float paddleWidth) {
    if (x >= paddleX && x <= paddleX + paddleWidth && y + (diameter / 2) >= paddleY) {
      score = score + 1;
      y = -diameter;
      x = random(width);
    }
  }
}
