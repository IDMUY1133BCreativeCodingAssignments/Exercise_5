class Bunny {
  private color skin, eyes;
  int wid, hei, x, y, w;
  Bunny(int newX, int newY, color skin1, color eyeColor) {
    //wid = widt; 
    //hei = heig;
    /*I got really confused here because the parameters I set for Bunny 
    and head() were the same, so the draw function would simply overlap 
    the parameters set. I figured out that I had to manipulate the x,y 
    coordinates. */
    skin = skin1;
    eyes = eyeColor;
    x = newX;
    y = newY;
    w = 300;
    //x = 300;
    //y = 400;
   
  }
  //added x & y to the parts of the code that required xy coordinates so i'll be able to manipulate them
  void head(int wid, int hei) {
    fill(skin); //beige
    ellipse(w+x, w+100+y, wid, hei); //head
    ellipse(w-150+x, w-100+y, wid/4, hei/.75); //left ear
    ellipse(w+150+x, w-100+y, wid/4, hei/.75); //right ear

    fill(255, 242, 241); //pink
    ellipse(w-145+x, w-150+y, wid/9.8, hei/3); //ear middle L
    ellipse(w+145+x, w-150+y, wid/9.8, hei/3); //ear middle R

    //facial features
    //eyes
    fill(eyes);
    ellipse(w-100+x, w+50+y, wid/10, wid/9.5); //left eye
    ellipse(w+100+x, w+50+y, wid/10, wid/9.5); //right eye
    stroke(232, 223, 208); //beige stroke
    //nose
    fill(232, 163, 146);
    ellipse(w+x, w+80+y, wid/9.6, hei/13.3);
    //mouth
    stroke(178, 129, 85);
    strokeWeight(2);
    fill(255, 155, 137);
    triangle(w+x, w+95+y, w-20+x, w+y+110, w+20+x, w+110+y);
    //cheeks
    noStroke();
    fill(255, 242, 241);
    ellipse(w-140+x, w+100+y, wid/8, hei/8);
    ellipse(w+140+x, w+100+y, wid/8, hei/8);
  }
}