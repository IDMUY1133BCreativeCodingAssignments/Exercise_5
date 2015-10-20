class BlobBill {

  int overallx = 70;
  int bodyy = 125;
  int heady = 50;
  int fat = 100;
  int tall = 100;
  int headfat = 50;
  int headtall = 50;
  int eyefat = 10;
  int eyetall = 10;
  int leyex = 60;
  int leyey = 40;
  int reyex = 80;
  int reyey = 40;
  int meyex = 70;
  int meyey = 50;
  int mouthx = 57;
  int mouthy = 60;
  int mouthfat = 27;
  int mouthtall = 10;
  int tvx = 30;
  int tvy = 100;
  int billeyex = 70;
  int billeyey = 125;
  int topx =70;
  int topy =105;
  int rightx =90;
  int bottomy = 145;
  int leftx = 50;
  color bodyhead=color(0, 0, 255);
  color lefteye=color(0, 255, 0);
  color righteye=color(0, 255, 0);
  color middleeye=color(0, 255, 0);
  color mouth=color(255, 0, 0);
  color screen=color(255);
  color bill=color(248, 255, 7);
  color billeye=color(255);
  color billpupil=color(0);
  int billeyefat=15;
  int billeyetall=15;
  int billpupilfat=5;
  int billpupiltall=5;

  void snowman() {
    bodyhead = color(255);
    righteye = color(0);
    lefteye = color(0);
    middleeye = color(0);
    mouth = color(0);
    billeye = color(0);
    bill = color(255);
    fat = 130;
    headfat = 70;
    headtall = 70;
  }
  void hellman() {
    bodyhead = color(150, 0, 0);
    righteye = color(random(0, 255), random(0, 255), random(0, 255));
    lefteye = color(random(0, 255), random(0, 255), random(0, 255));
    middleeye = color(random(0, 255), random(0, 255), random(0, 255));
    mouth = color(0);
    billeye = color(random(0, 255), random(0, 255), random(0, 255));
    billpupil = 255;
    bill = color(0);
    screen = color(random(0, 255), random(0, 255), random(0, 255));
    headtall = 100;
    tall = 125;
    topy = 100;
    rightx = 100;
    leftx = 40;
  }
  void angryman() {
    bodyhead = color(207,127,10);
    righteye = color(255,0,0);
    lefteye = color(0,255,0);
    middleeye = color(0,0,255);
    mouth = color(64,0,150);
    billeye = color(0);
    bill = color(255,0,0);
    billpupil = 255;
    screen = color(255,106,0);
    topy = 100;
    rightx = 110;
    leftx = 30;
    billeyefat = 25;
    billeyetall = 25;
    billpupilfat = 10;
    billpupiltall = 10;
    fat = 150;
    tall = 170;
    headfat = 120;
  }

  BlobBill(int x, int yb, int yh) {
    overallx = x;
    bodyy = yb;
    heady = yh;
  }

  void update() {
    monster();
  }

  void monster() {
    stroke(0);
    fill(bodyhead);

    ellipse(overallx, bodyy, fat, tall); //body
    ellipse(overallx, heady, headfat, headtall); //head

    fill(lefteye);
    ellipse(leyex + overallx - 70, leyey, eyefat, eyetall); //left eye
    fill(righteye);
    ellipse(reyex + overallx - 70, reyey, eyefat, eyetall); //right eye
    fill(middleeye);
    ellipse(meyex + overallx - 70, meyey, eyefat, eyetall); //middle eye

    fill(mouth);
    rect(mouthx + overallx - 70, mouthy, mouthfat, mouthtall); //mouth

    fill(screen);
    rect(tvx + overallx - 70, tvy, 80, 50); //screen

    fill(bill);
    triangle(topx + overallx - 70, topy, rightx + overallx - 70, bottomy, leftx + overallx - 70, bottomy); //billbody

    fill(billeye);
    ellipse(billeyex + overallx - 70, billeyey, billeyefat, billeyetall); //billeye

    fill(billpupil);
    ellipse(billeyex + overallx - 70, billeyey, billpupilfat, billpupiltall); //billpupil
  }
}