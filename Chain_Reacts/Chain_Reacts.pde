/*Shruthi Venkata, Maryann Foley
 APCS pd8
 HW 52 -- Grow and Shrink
 2018-05-22*/
 Ball[] balls;
 
 void setup(){
   background(0);
   balls = new Ball[(int)random(25,35)];
   for (int i =0; i< balls.length;i++){
     balls[i] = new Ball();
   }
   
 }

void draw(){
  clear();
  for (Ball pew:balls){
    pew.move();
  }
}