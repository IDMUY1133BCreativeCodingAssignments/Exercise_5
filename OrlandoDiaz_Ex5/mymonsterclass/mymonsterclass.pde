BlobBill[] blobs;
void setup(){
  background(255);
  size(800,800);
  blobs = new BlobBill[4];
  
  blobs[0] = new BlobBill(70, 125, 50);
  blobs[1] = new BlobBill(480, 125, 50);
  blobs[2] = new BlobBill(210, 125, 50);
  blobs[3] = new BlobBill(350, 125, 50);
}

void draw(){
  background(255);
  for(int i = 0; i < blobs.length; i++){
        blobs[i].update();
    }
    blobs[0].snowman();
    blobs[1].hellman();
    blobs[2].angryman();
}