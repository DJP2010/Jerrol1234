Ball[] ballen = new Ball[5];

float paddleWidth = 100;
float paddleHeight = 20;
int score = 0;
int levens = 5;

void setup() {
  size(400, 400);

  for (int i = 0; i < ballen.length; i++) {
    ballen[i] = new Ball();
  }
}

void draw() {
  background(255, 255, 255);

  if (levens <= 0) {
    fill(255, 0, 0); 
    textSize(40);
    textAlign(CENTER, CENTER);
    text("GAME OVER :(", width / 2, height / 2);
    return; 
  }

  float paddleX = mouseX - (paddleWidth / 2);
  float paddleY = height - 30;
  
  fill(64, 224, 208);
  rect(paddleX, paddleY, paddleWidth, paddleHeight);

  fill(0); 
  textSize(20);
  textAlign(LEFT, BASELINE);
  text("Score: " + score, 20, 30);
  text("Levens: " + levens, 20, 60);
  

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
  int type;

  Ball() {
    x = random(width);
    y = random(-200, 0);
    
    float kans = random(1);
    if (kans < 0.2) {
      type = 2; // Bom (rood)
      diameter = 50;
      speed = 3.5;
    } else if (kans < 0.5) { 
      type = 3;  // Bonusbal (geel)
      diameter = 40;
      speed = 3.5;
    } else if (kans < 0.65) {
      type = 1; // Kleine snelle bal (paars)
      diameter = 25;
      speed = 5;
    } else if (kans < 0.7) {
      type = 4; // Extra bonus/iets kleinere snelle bal (blauw)
      diameter = 30;
      speed = 10;
    } else {
      type = 0; // Normale bal (groen)
      diameter = 50;
      speed = 2;
    }
  }

  void display() {
    if (type == 2) {
      fill(255, 0, 0);
    } else if (type == 3) {
      fill(255, 255, 0);
    } else if (type == 1) {
      fill(150, 0, 255);
    } else if (type == 4) {
      fill(0, 0, 255);
    } else {
      fill(0, 200, 0);
    }
    circle(x, y, diameter);
  }

  void move() {
    y = y + speed;
  }

  void resetAlsUitBeeld() {
    if (y > height + (diameter / 2)) {
      y = -diameter;
      x = random(width);
      
      if (type != 2) {
        levens = levens - 1;
      }
      
      respawn();
    }
  }

  void raaktPaddle(float paddleX, float paddleY, float paddleWidth) {
    if (x >= paddleX && x <= paddleX + paddleWidth && y + (diameter / 2) >= paddleY) {
      
      if (type == 2) {
        levens = levens - 1;
      } else if (type == 3) {
        score = score + 5;
      } else if (type == 1) {
        score = score + 3;
      } else if (type == 4) {
        score = score + 10;
      } else {
        score = score + 1;
      }
      
      y = -diameter;
      x = random(width);
      respawn();
    }
  }
  
  void respawn() {
    float kans = random(1);
    if (kans < 0.2) {
      type = 2;
      diameter = 50;
      speed = 3.5;
    } else if (kans < 0.5) {
      type = 3;
      diameter = 40;
      speed = 3.5;
    } else if (kans < 0.65) {
      type = 1;
      diameter = 25;
      speed = 5;
    } else if (kans < 0.7) {
      type = 4; 
      diameter = 30;
      speed = 10;
    } else {
      type = 0;
      diameter = 50;
      speed = 2;
    }
  }
}
 
