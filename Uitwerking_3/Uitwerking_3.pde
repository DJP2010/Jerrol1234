float ballX = 200;   
float ballY = 50;   
float diameter = 50;
float speed = 2.5;    

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
}
