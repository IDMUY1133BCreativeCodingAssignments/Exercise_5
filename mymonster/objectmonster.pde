//having trouble with adjusting the arms with the random sizing variables

class Monster {
  float xpos;//x loc
  color bcol;//body color
  color pcol;//pouch color
  color scol;//shoecolor
  color fcol;//face color
  float wid;//width of body
  float horn;//horn height
  
  Monster(float x,color b,color p,color s,color f,float w,float h) {
    xpos=x;
    bcol=b;
    pcol=p;
    scol=s;
    fcol=f;
    wid=w;
    horn=h;
  }

  void body() {
    fill(bcol);//
    ellipse(xpos+300, 330, wid, 200);//body

    beginShape();
    curveVertex(xpos+220,380);
    curveVertex(xpos+220,380);
    curveVertex(xpos+230,375);
    curveVertex(xpos+233,365);
    curveVertex(xpos+240,310);
    curveVertex(xpos+240,310);
    endShape(); 
    beginShape();
    curveVertex(xpos+380,380);
    curveVertex(xpos+380,380);
    curveVertex(xpos+370,375);
    curveVertex(xpos+367,365);
    curveVertex(xpos+360,310);
    curveVertex(xpos+360,310);
    endShape(); 
    //both arms

    fill(pcol);
    quad(xpos+250, 300, xpos+350, 300, xpos+325, 380, xpos+275, 380);//pouch

    stroke(13, 80, 68);
    fill(scol);
    rect(xpos+240, 410, 50, 30);
    rect(xpos+310, 410, 50, 30);
    rect(xpos+235, 435, 60, 10);
    rect(xpos+305, 435, 60, 10);//trendy platform shoes

    stroke(0);
    noFill();
    triangle(xpos+265, 410, xpos+255, 400, xpos+260, 400);
    triangle(xpos+265, 410, xpos+275, 400, xpos+270, 400);
    triangle(xpos+335, 410, xpos+325, 400, xpos+330, 400);
    triangle(xpos+335, 410, xpos+345, 400, xpos+340, 400);//shoelaces

    line(xpos+295, 360, xpos+305, 365);
    line(xpos+295, 365, xpos+305, 360);//belly-button
  }

  void face() {
    fill(209, 34, 69);
    triangle(xpos+265, 165, xpos+287, 150, xpos+240, horn);
    triangle(xpos+335, 165, xpos+313, 150, xpos+360, horn);//horns

    fill(fcol);//head shape
    ellipse(xpos+300, 225, 130, 100);
    arc(xpos+300, 200, 100, 130, PI, TWO_PI); //combines ellipse covered by a filled arc

    fill(0);
    ellipse(xpos+285, 185, 4, 4);
    ellipse(xpos+315, 185, 4, 4);//eyes

    noFill();
    beginShape();
    curveVertex(xpos+270, 200);
    curveVertex(xpos+270, 200);
    curveVertex(xpos+285, 194);
    curveVertex(xpos+300, 192);
    curveVertex(xpos+315, 194);
    curveVertex(xpos+330, 200);
    curveVertex(xpos+330, 200);//coordinate points to connect,making curved line
    endShape();//to make snout hump

    fill(67, 49, 108);
    ellipse(xpos+300, 213, 70, 25);//nose

    fill(fcol);
    beginShape();
    curveVertex(xpos+305, 238);
    curveVertex(xpos+305, 238);
    curveVertex(xpos+315, 240);
    curveVertex(xpos+325, 238);
    curveVertex(xpos+330, 235);
    curveVertex(xpos+335, 230);
    curveVertex(xpos+335, 230);
    endShape();//mouth or smile

    fill(255, 173, 21);
    beginShape();
    vertex(xpos+300, 275);
    vertex(xpos+270, 265);
    vertex(xpos+270, 285);
    vertex(xpos+330, 265);
    vertex(xpos+330, 285);
    vertex(xpos+300, 275);
    endShape();
    ellipse(xpos+300, 275, 15, 15);//bowtie

    fill(227, 234, 197);
    triangle(xpos+325, 238, xpos+315, 240, xpos+323, 255);//tiny fang
    //random conditional statement practice
    //friendly monster gets angry when you go near his belly button
    if ((mouseX>=xpos+295)&&(mouseX<=xpos+305)&&(mouseY>=360)&&(mouseY<=365)) {
      line(xpos+280, 170, xpos+290, 180);
      line(xpos+320, 170, xpos+310, 180);//furrowed brow
      fill(0);
      beginShape();
      curveVertex(xpos+295, 260);
      curveVertex(xpos+295, 260);
      curveVertex(xpos+305, 240);
      curveVertex(xpos+300, 240);
      curveVertex(xpos+315, 230);
      curveVertex(xpos+330, 225);
      curveVertex(xpos+335, 230);
      curveVertex(xpos+340, 255);
      curveVertex(xpos+340, 255);
      endShape();
      fill(fcol);//frown
      triangle(xpos+315, 230, xpos+330, 225, xpos+323, 260);//tiny and big fang
      triangle(xpos+305, 240, xpos+315, 230, xpos+310, 255);
    }//if
  }
}