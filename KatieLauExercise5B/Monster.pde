class Monster{
  
float translateX;
float translateY;
float scale;

int moveBy = 10;

int norm = 10;
int normMax = 30;

Monster(float translateByX, float translateByY, float scaleBy){
  //constructor for the Monster object
  //makes all the monsters different sizes 
  translateX = translateByX;
  translateY = translateByY;
  scale = scaleBy;
}


void monstDraw(color feet, color ear, color body, boolean wideEye, boolean openMouth) { //acccepts 3 parameters to determine color
  pushMatrix(); //necessary so translations only affect one monster, and not the others
  translate(translateX, translateY);
  scale(scale);
  feet(feet); //will take feet color variable as a parameter 
  //calls  all the individual body part functions
  ears(ear);
  horn();
  arms();
  body(body);
  brows();
  eyes(wideEye); //if wideEye is true, the pupil widens
  mouth(openMouth); //if openMouth is true, the mouth opens when a key is pressed
  popMatrix();
}

void feet(color feet) {  
  fill(feet); //uses parameter to color feet
  ellipse(140, 310, 40, 30);
  ellipse(260, 310, 40, 30);
}
void ears(color ear) { //fills ear with color parameter
  fill(ear);
  triangle(90, 100, 150, 140, 100, 150);
  triangle(310, 100, 250, 140, 300, 150);
}
void horn() { //little horn on top
  fill(255, 70, 58);
  ellipse(200, 150, 30, 100);
}

void arms() { //arms 
  fill(255, 146, 106);
  rect(50, 225, 300, 30);
}
void body(color _body) { //fills body with color parameter
  fill(_body);
  rect(100, 125, 200, 175);
}
void brows() { //draws the brows
  strokeWeight(3);
  line(110, 175, 160, 175);
  line(240, 175, 290, 175);
}
void eyes(boolean chosenOne) {
  fill(170, 252, 255);
  ellipse(135, 210, 30, 30);
  ellipse(265, 210, 30, 30);
  if(chosenOne == true){
    widenEyes();
  }
  fill(0);
  ellipse(135, 210, norm, norm);
  ellipse(265, 210, norm, norm);
  }

void mouth(boolean chosenMouth) {
  if(chosenMouth && keyPressed){
  fill(255, 99, 97);
  rect(135, 240, 130, 30);
  fill(255);
  rect(170, 240, 60, 10);
  }
  else{
      line(135, 265, 265, 265);
  }
}

void widenEyes(){
   norm++; //increases pupil size 
 norm = constrain(norm, 10, 30);
 if(norm == 30){
   norm = 10;
 }
}

}