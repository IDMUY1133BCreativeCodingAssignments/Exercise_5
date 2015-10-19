class Dragon{
  
  private color a, i, b;
  float x, y;
  
Dragon(float tempX, float tempY){
x=tempX;
y=tempY;
}

  void body(color b) {
  noStroke();
  fill(0);
  ellipse(398+x, 159+y, 25, 25);
  ellipse(427+x, 159+y, 25, 25);
  fill(0, 200, 230);
  ellipse(398+x, 161+y, 27, 24);
  ellipse(427+x, 161+y, 27, 24);

  fill(b);
  ellipse(175+x, 250+y, 150, 150);//tail
  fill(0, 200, 230);
  ellipse(225+x, 180+y, 200, 200);//tail blocker

  fill(b);
  rect(200+x, 250+y, 200, 100);//body
  ellipse(300+x, 250+y, 200, 50);//top round for body
  ellipse(300+x, 350+y, 200, 50);//bottom round for body
  rect(350+x, 200+y, 50, 200);//front neck leg
  rect(200+x, 250+y, 50, 150);//back leg
  ellipse(250+x, 387+y, 25, 25);//back toe
  ellipse(400+x, 387+y, 25, 25);//front toe
  ellipse(400+x, 200+y, 100, 60);//head
  //stroke(0);
  rect(400+x, 200+y, 100, 30);//mouth
  ellipse(450+x, 200+y, 100, 15);//mouth round top
  ellipse(450+x, 230+y, 100, 15);//mouth round bottom


  fill(0, 0, 0);
  ellipse(475+x, 202+y, 7, 7);//left nostril
  ellipse(485+x, 202+y, 7, 7);//right nostril
  fill(255, 255, 255);
  ellipse(400+x, 180+y, 30, 40);//left eye
  ellipse(425+x, 180+y, 30, 40);//right eye
  fill(0);
  ellipse(450+x, 225+y, 100, 15);//mouthblack
  fill(b);
  ellipse(450+x, 223+y, 100, 15);//mouthred
  fill(200, 0, 255);
  ellipse(400+x, 169+y, 29, 26);//purpleleft
  ellipse(425+x, 169+y, 30, 26);//purpleright
  fill(255);
  rect(387+x, 174+y, 53, 7);//white eyelid
}

void pupils(){
  fill(0);
  PShape pupils =createShape(GROUP);//creates group of shapes
  PShape leftpupil = createShape(ELLIPSE, 427+x, 185+y, 14, 14);
  PShape rightpupil =createShape(ELLIPSE, 402+x, 185+y, 14, 14);
  pupils.addChild(leftpupil);//adds shape to group "pupils"
  pupils.addChild(rightpupil);//adds shape to group "pupils"
  shape(pupils);//draws shape of two pupils
}

  void iris(color i) {  
    fill(i);
    PShape iris =createShape(GROUP);//creates group of shapes
    PShape leftiris = createShape(ELLIPSE, 427+x, 185+y, 20, 20);
    PShape rightiris =createShape(ELLIPSE, 402+x, 185+y, 20, 20);
    iris.addChild(leftiris);
    iris.addChild(rightiris);
    shape(iris);//draws shape of two irises}
  }



  void spikes(color a) {
    noStroke();
    fill(a);
    triangle(300+x, 220+y, 320+x, 240+y, 280+x, 240+y);
    triangle(280+x, 220+y, 300+x, 240+y, 260+x, 240+y);
    triangle(260+x, 220+y, 280+x, 240+y, 240+x, 240+y);
    triangle(240+x, 220+y, 260+x, 240+y, 220+x, 240+y);
    triangle(320+x, 220+y, 340+x, 240+y, 300+x, 240+y);
    triangle(340+x, 220+y, 360+x, 240+y, 320+x, 240+y);
    triangle(210+x, 225+y, 230+x, 240+y, 200+x, 250+y);
  }
}