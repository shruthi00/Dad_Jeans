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
    balls[i] = new Ball(0);
   ellipse(balls[i].x, balls[i].y, balls[i].rad, balls[i].rad);
  }
  background(0);
}

void draw() {
  clear();
  //print("draw");
  for (Ball pew : balls) {
    fill(pew.c);
    pew.check();
    if(pew.state != Ball.DEAD)
      ellipse(pew.x, pew.y, pew.rad, pew.rad);
  }
}

void mouseClicked(){
    
}