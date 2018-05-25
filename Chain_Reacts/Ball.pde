/* Maryann Foley, Shruthi Venkata
 APCS pd8
 HW 52 -- Grow and Shrink
 2018-05-22*/
class Ball{
int diameter;
int hasBeenPressed; //an int that allows for before clicking, after one click, and after a second click
//rbg color numbers so it can rotate through colors
float speed;
int colorR; 
int colorB;
int colorG;
int xPos;
int yPos;
int xMove;
int yMove;

Ball() {
  //println("first line of constructor");
  diameter = 20; //sets base diameter to 20
  //sets colors to 3 random ints
  colorR = (int(random(255)));
  colorB = (int(random(255)));
  colorG = (int(random(255)));

  xPos = int(random(300))+150; 
  //print("x: "+xPos);
  yPos = int(random(300))+150;
 // print("y: "+yPos); //these print statements helped to determine that code was not running through constructor correctly
  xMove = (int)(random(5))+1;
  yMove = (int)(random(5))+1;

}

void move() {
  
 //println("moving");
  if (xPos>590) {
    xPos=xPos-int(random(10));
    xMove*=-1;
  }
  else if (xPos<10){
    xPos=xPos+int(random(10));
    xMove *=-1;
  }
  else {
    xPos+=xMove;
  }
  if (yPos>590) {
    yPos=yPos-int(random(10));
    yMove*=-1;
  }
  else if (yPos<10){
    yPos=yPos+int(random(10));
    yMove *=-1;
  }
  else {
    yPos+=yMove;
  }
}
}
