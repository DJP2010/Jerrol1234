float ballX = 200;    
float ballY = 50;    
float diameter = 50;
float speed = 2.5;    


float paddleWidth = 100;
float paddleHeight = 20;

void setup() {
  size(400, 400);
}

void draw() {
  background(255, 255, 255);

  
  ballY = ballY + speed;
  circle(ballX, ballY, diameter);

  
  if (ballY > height + (diameter / 2)) {
    ballY = -diameter;  
    ballX = random(width);    
  }
  
  float paddleX = mouseX - (paddleWidth / 2);
  float paddleY = height - 30; 
  
  rect(paddleX, paddleY, paddleWidth, paddleHeight);
}
