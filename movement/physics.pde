void updateBallVelocity() {
  ballVy += gravity;
  // Add control for movement keys here
}

void updateBallPosition() {
  ballX += ballVx;
  ballY += ballVy;
}

void resolveCollisions() {
  // Resolving Collisions with floor (bottom wall).
  if (ballX> displayWidth-ballRadius){
    ballX = displayWidth-ballRadius;
    ballVx *= -restitutionCoeff;
   
 
}
if (ballX< ballRadius)
{
  ballVx*=-restitutionCoeff;
  ballX=ballRadius;  
}
}