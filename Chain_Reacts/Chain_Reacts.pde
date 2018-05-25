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
   ellipse(balls[i].xPos, balls[i].yPos, 20, 20);
  }
  background(0);
}

void draw() {
  clear();
  //print("draw");
  for (Ball pew : balls) {
    fill(pew.colorR, pew.colorB, pew.colorG);
    pew.move();
    ellipse(pew.xPos, pew.yPos, 20, 20);
  }
}
