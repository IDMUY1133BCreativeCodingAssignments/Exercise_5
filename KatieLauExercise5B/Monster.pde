class Monster{
  
float translateX;
float translateY;
float scale;

int moveBy = 10;

Monster(float translateByX, float translateByY, float scaleBy){
  //constructor for the Monster object
  //makes all the monsters different sizes 
  translateX = translateByX;
  translateY = translateByY;
  scale = scaleBy;
}


void monstDraw(color feet, color ear, color body) { //acccepts 3 parameters to determine color
  pushMatrix(); //necessary so translations only affect one monster, and not the others
  translate(translateX, translateY);
  scale(scale);
  
  
  feet(feet, 0); //will take feet color variable as a parameter 
  //calls  all the individual body part functions
  ears(ear, 0);
  horn(0);
  arms(0);
  body(body, 0);
  brows(0);
  eyes(0);
  mouth(0);
  popMatrix();
  /*
  if(keyPressed){
  feet(feet, moveBy); //will take feet color variable as a parameter 
  ears(ear, 0);
  horn(0);
  arms(0);
  body(body, 0);
  brows(0);
  eyes(0);
  mouth(0);
    */
  }
}

void feet(color feet, int move) {  
  fill(feet); //uses parameter to color feet
  ellipse(140 + move, 310, 40, 30);
  ellipse(260, 310, 40, 30);
}
void ears(color ear, int move) {
  fill(ear);
  triangle(90, 100, 150, 140, 100, 150);
  triangle(310, 100, 250, 140, 300, 150);
}
void horn(int move) {
  fill(255, 70, 58);
  ellipse(200, 150, 30, 100);
}

void arms(int move) {
  fill(255, 146, 106);
  rect(50, 225, 300, 30);
}
void body(color body, int move) {
  fill(body);
  rect(100, 125, 200, 175);
}
void brows(int move) {
  strokeWeight(3);
  line(110, 175, 160, 175);
  line(240, 175, 290, 175);
}
void eyes(int move) {
  fill(170, 252, 255);
  ellipse(135, 210, 30, 30);
  ellipse(265, 210, 30, 30);
  fill(0);
  ellipse(135, 210, 10, 10);
  ellipse(265, 210, 10, 10);
}
void mouth(int move) {
  line(135, 265, 265, 265);
}

void move(){
 //do key pressed stuff here 
  //MAYBE DO A BUNCH OF KEYS so when user like button smashes thingS HAPPEN 
  
  
}

}