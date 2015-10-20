class Blob{
private color skin,skinF;
float x,y;

Blob(float cX,float cY, color sk, color sko){

  x = cX;
  y = cY;
  skin = sk;
  skinF = sko;
}

void blobyblo(){
    fill(skin);
    
    //left arm
    beginShape();
    curveVertex(350+x,700+y);
    curveVertex(350+x,700+y);
    curveVertex(200+x,600+y);
    curveVertex(400+x,620+y);
    curveVertex(470+x,620+y);
    curveVertex(470+x,620+y);
    endShape();
    
  //right arm
    
    beginShape();
    curveVertex(600+x, 600+y);
    curveVertex(600+x, 600+y);
    curveVertex(720+x, 750+y);
    curveVertex(700+x, 750+y);
    curveVertex(600+x, 600+y);
    curveVertex(600+x, 600+y);
    endShape();
   
   // body
    beginShape();
    curveVertex(300+x, 800+y);
    curveVertex(300+x, 800+y);
    curveVertex(330+x, 550+y);
    curveVertex(630+x, 600+y);
    curveVertex(800+x, 1200+y);
    curveVertex(800+x, 1200+y);
    endShape();
  
    
   // eye
    noFill();
    beginShape();
    curveVertex(340+x, 580+y);
    curveVertex(340+x, 580+y);
    curveVertex(340+x, 600+y);
    curveVertex(410+x, 600+y);
    curveVertex(415+x, 580+y);
    curveVertex(415+x, 580+y);
    endShape();
    
    // right eye
    noFill();
    beginShape();
    curveVertex(500+x, 580+y);
    curveVertex(500+x, 580+y);
    curveVertex(500+x, 600+y);
    curveVertex(570+x, 600+y);
    curveVertex(575+x, 580+y);
    curveVertex(575+x, 580+y);
    endShape();
    
    
    // left foot
    fill(skinF);
    beginShape();
    curveVertex(375+x, 1200+y);
    curveVertex(375+x, 1200+y);
    curveVertex(400+x, 800+y);
    curveVertex(500+x, 800+y);
    curveVertex(500+x, 1200+y);
    curveVertex(500+x, 1200+y);
    endShape();
    
    // right foot
    beginShape();
    curveVertex(475+x, 1200+y);
    curveVertex(475+x, 1200+y);
    curveVertex(500+x, 800+y);
    curveVertex(600+x, 800+y);
    curveVertex(600+x, 1200+y);
    curveVertex(600+x, 1200+y);
    endShape();
}

}