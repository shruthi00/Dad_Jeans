/* Maryann Foley, Shruthi Venkata
 APCS pd8
 HW 52 -- Grow and Shrink
 2018-05-22*/
class Ball {

  final static int MOVING =0;
  final static int GROWING =1;
  final static int SHRINKING =2;
  final static int DEAD =3;
  final float CHANGE_FACTOR =.25;
  final float MAX_RADIUS =50;

  int hasBeenPressed; //an int that allows for before clicking, after one click, and after a second click
  //rbg color numbers so it can rotate through colors
  float rad;
  color c;
  float x;
  float y;
  float dx;
  float dy;
  int state;



  Ball() {
    //println("first line of constructor");
    rad = random(20)+5; //sets base diameter to 20
    //sets colors to 3 random ints
    int colorR = (int(random(255)));
    int colorB = (int(random(255)));
    int colorG = (int(random(255)));
    c=color(colorR, colorB, colorG); 
    x = random(600); 
    //print("x: "+x);
    y = random(600);
    // print("y: "+y); //these print statements helped to determine that code was not running through constructor correctly
    dx =(random(10))-5;
    dy =(random(10))-5;
    state=0;

  }
  
  Ball(int inputState) {
    this();
    state = inputState;
  }
  
  Ball(int inputState,float inputx, float inputy) {
    this(inputState);
    x=inputx;
    y=inputy;
  }

  void check() {
    if (state==MOVING) {
      move();
    } else if (state==GROWING) {
      if (rad >(MAX_RADIUS)-CHANGE_FACTOR) {//max rad - change factor
        state=SHRINKING;
      } else {
        rad+=CHANGE_FACTOR;
      }
    } else if (state == SHRINKING) {
      if (rad<CHANGE_FACTOR) {
        state = DEAD;
      } else {
        rad -=CHANGE_FACTOR;
      }
    }
  }
  void move() {

    //println("moving");
    
    if (x>(600-rad)) {
      x=x-int(random(10));
      dx*=-1;
    } else if (x<rad) {
      x=x+int(random(10));
      dx *=-1;
    } else {
      x+=dx;
    }
    if (y>(600-rad)) {
      y=y-int(random(10));
      dy*=-1;
    } else if (y<rad) {
      y=y+int(random(10));
      dy *=-1;
    } else {
      y+=dy;
    }
  }
}
