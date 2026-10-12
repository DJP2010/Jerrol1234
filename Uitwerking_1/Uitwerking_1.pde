float ballX = 50;
 float ballY = 200;
 float diameter = 50;
 float speedX = 4;

void setup () {
  size(400, 400);
}

void draw() {
  background(255, 255, 255);


  ballX = ballX + speedX;
  
  circle(ballX, ballY, diameter);
}
