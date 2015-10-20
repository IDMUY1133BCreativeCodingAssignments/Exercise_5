//REFERENCE: INCLASS CHALLENGE 2 FUNCTIONS ARRAY MONSTER 
Blob a;
Blob b;
Blob c;
Blob d;
Blob e;
PFont font;


void setup() {
  size(1200, 800);
    
}

void draw() {
  background(255);
    font = createFont("Georgia",90);
    textFont(font);
    text("PRESS KEYS", 350,height/2);
    text(" A , S, D, F, or G ", 320, 500);
  if (keyPressed){
  if (key == 'a' || key == 'A'){
  a = new Blob(320,-400,color(232,143,123), color(12,59,39));//peachy
  a.blobyblo();
  }
  else if (key == 's' || key == 'S'){
  b = new Blob(-10,-100, color(213,43,12), color(49,20,140)); //red
  b.blobyblo();
  }
  else if (key == 'd' || key == 'D'){
  c = new Blob(700,-200, color(239,225,13), color(40,10,0)); //yellow 
  c.blobyblo();
  }
  else if (key == 'f' || key == 'F'){
  d = new Blob(-350,-200, color(84,106,130), color(50,191,158)); //grayish blue
  d.blobyblo();
  }
  else if (key == 'g' || key == 'G'){
  e = new Blob(80,-500, color(207,43,143), color(10,194,118)); //pink
  e.blobyblo();
  }
  }
  else {
    font = createFont("Georgia",90);
    textFont(font);
    text("PRESS KEYS", 350,height/2);
    text(" A , S, D, F, or G ", 320, 500);
  
  }
  
}