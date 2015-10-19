class Blank {
  
 float d, e;

Blank(float tempD, float tempE){
d=tempD;
e=tempE;
}

void ghost(){
  noStroke();
  fill(0, 200, 230);
  ellipse(398+d, 159+e, 50, 50);
  ellipse(427+d, 159+e, 50, 50);
  fill(0, 200, 230);
  ellipse(398+d, 161+e, 27, 24);
  ellipse(427+d, 161+e, 27, 24);

  fill(0, 200, 230);
  ellipse(175+d, 250+e, 150, 150);//tail
  fill(0, 200, 230);
  ellipse(225+d, 180+e, 200, 200);//tail blocker

  fill(0, 200, 230);
  rect(200+d, 250+e, 200, 100);//bode
  ellipse(300+d, 250+e, 200, 50);//top round for bode
  ellipse(300+d, 350+e, 200, 50);//bottom round for bode
  rect(350+d, 200+e, 50, 200);//front neck leg
  rect(200+d, 250+e, 50, 150);//back leg
  ellipse(250+d, 387+e, 25, 25);//back toe
  ellipse(400+d, 387+e, 25, 25);//front toe
  ellipse(400+d, 200+e, 100, 60);//head
  //stroke(0);
  rect(400+d, 200+e, 100, 30);//mouth
  ellipse(450+d, 200+e, 100, 15);//mouth round top
  ellipse(450+d, 230+e, 100, 15);//mouth round bottom


  fill(0, 200, 230);
  ellipse(475+d, 202+e, 7, 7);//left nostril
  ellipse(485+d, 202+e, 7, 7);//right nostril
  fill(0, 200, 230);
  ellipse(400+d, 180+e, 30, 40);//left eee
  ellipse(425+d, 180+e, 30, 40);//right eee
  fill(0, 200, 230);
  ellipse(450+d, 225+e, 100, 15);//mouthblack
  fill(0, 200, 230);
  ellipse(450+d, 223+e, 100, 15);//mouthred
  fill(0, 200, 230);
  ellipse(400+d, 169+e, 29, 26);//purpleleft
  ellipse(425+d, 169+e, 30, 26);//purpleright
  fill(0, 200, 230);
  rect(387+d, 174+e, 53, 7);//white eeelid


  fill(0, 200, 230);
  PShape pupils =createShape(GROUP);//creates group of shapes
  PShape leftpupil = createShape(ELLIPSE, 427+d, 185+e, 14, 14);
  PShape rightpupil =createShape(ELLIPSE, 402+d, 185+e, 14, 14);
  pupils.addChild(leftpupil);//adds shape to group "pupils"
  pupils.addChild(rightpupil);//adds shape to group "pupils"
  shape(pupils);//draws shape of two pupils
  
    fill(0, 200, 230);
    PShape iris =createShape(GROUP);//creates group of shapes
    PShape leftiris = createShape(ELLIPSE, 427+d, 185+e, 20, 20);
    PShape rightiris =createShape(ELLIPSE, 402+d, 185+e, 20, 20);
    iris.addChild(leftiris);
    iris.addChild(rightiris);
    shape(iris);//draws shape of two irises}


    noStroke();
    fill(0, 200, 230);
    triangle(300+d, 220+e, 320+d, 240+e, 280+d, 240+e);
    triangle(280+d, 220+e, 300+d, 240+e, 260+d, 240+e);
    triangle(260+d, 220+e, 280+d, 240+e, 240+d, 240+e);
    triangle(240+d, 220+e, 260+d, 240+e, 220+d, 240+e);
    triangle(320+d, 220+e, 340+d, 240+e, 300+d, 240+e);
    triangle(340+d, 220+e, 360+d, 240+e, 320+d, 240+e);
    triangle(210+d, 225+e, 230+d, 240+e, 200+d, 250+e);
 }
 }