/*Shruthi Venkata, Maryann Foley
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

void setup() {
  diameter = 20; //sets base diameter to 20
  //sets colors to 3 random ints
  colorR = (int(random(255)));
  colorB = (int(random(255)));
  colorG = (int(random(255)));
  speed = random(10);
  xPos = int(random(300));
  yPos = int(random(300));
}

void move() {
  fill(colorR, colorB, colorG);
  ellipse(xPos, yPos, diameter, diameter);
  if (xPos<600) {
    xPos=xPos+1;
  }
  else {
    xPos=xPos-int(random(300));
  }
  if (yPos<600) {
    yPos=yPos+1;
  }
  else {
    yPos=yPos-int(random(300));
  }
}
}