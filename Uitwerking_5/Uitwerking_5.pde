float ballX = 200;    
float ballY = 50;    
float diameter = 50;
float speed = 2.5;    

float paddleWidth = 100;
float paddleHeight = 20;

int score = 0;

void setup() {
  size(400, 400);
}

void draw() {
  
  background(255, 255, 255);

  ballY = ballY + speed;
  
  fill(0); 
  circle(ballX, ballY, diameter);

  float paddleX = mouseX - (paddleWidth / 2);
  float paddleY = height - 30;
  
  fill(0); 
  rect(paddleX, paddleY, paddleWidth, paddleHeight);

  fill(0); 
  textSize(20);
  text("Score: " + score, 20, 30);

  if (ballX >= paddleX && ballX <= paddleX + paddleWidth && ballY + (diameter / 2) >= paddleY) {
    score = score + 1;      
    ballY = -diameter;      
    ballX = random(width);  
  }

  if (ballY > height + (diameter / 2)) {
    ballY = -diameter;      
    ballX = random(width);  
  }
}
