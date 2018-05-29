/*Maryann Foley, Shruthi Venkata
 APCS pd8
 HW 52 -- Grow and Shrink
 2018-05-22*/
Ball[] balls;

void setup() {
  size(600, 600);
  balls = new Ball[(int)random(25, 35)];

  for (int i =0; i< balls.length; i++) {
    //print("looptity loop");
    balls[i] = new Ball();
    ellipse(balls[i].x, balls[i].y, 2*balls[i].rad, 2*balls[i].rad);
  }
  background(0);
}

void draw() {
  clear();
  //print("draw");
  for (Ball pew : balls) {
    fill(pew.c);
    pew.check();
    if (pew.state != Ball.DEAD)
      ellipse(pew.x, pew.y, 2*pew.rad, 2*pew.rad);
    if (pew.state==Ball.MOVING) {
      for (Ball checkBall : balls) {
        if (checkBall.state == Ball.GROWING ||checkBall.state == Ball.SHRINKING) {
          if (inRange(pew, checkBall)) {
            pew.state = Ball.GROWING;
          }
        }
      }
    }
  }
}

  boolean inRange(Ball one, Ball two) {
    
    /*  ORIGINAL CODE, BASICALLY JUST A SQUARE AROUND THE CIRCLE
    float maxXOne=one.x+ abs(one.rad);
    float minXOne=one.x-abs(one.rad);
    float maxYOne=one.y+abs(one.rad);
    float minYOne=one.y-abs(one.rad);
    float maxXTwo=two.x+abs(two.rad);
    float minXTwo=two.x-abs(two.rad);
    float maxYTwo=two.y+abs(two.rad);
    float minYTwo=two.y-abs(two.rad);
    if ((maxXTwo < maxXOne && maxXTwo > minXOne) || (minXTwo < maxXOne && maxXTwo > minXOne)) {
      if ((maxYTwo < maxYOne && maxYTwo > minYOne) || (minYTwo < maxYOne && maxYTwo > minYOne)) {
        return true;
      }
    }
    return false;
    */
    
    return (sqrt(pow((float)one.x-two.x,2)+pow((float)one.y-two.y,2))) <= (one.rad+two.rad);
  }

  void mouseClicked() {
    Ball[] tempArray=new Ball[balls.length];
    for (int i=0; i<balls.length; i++) {
      tempArray[i]=balls[i];
    }
    tempArray[balls.length-1]= new Ball(1, mouseX, mouseY);
    balls = tempArray;
  }
