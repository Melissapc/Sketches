import ddf.minim.*;
Minim minim;  
AudioPlayer song;
PImage pictureOfRecord;
int y = 500;
void draw() {
  y++;
  y++;
  if (mousePressed) {
    rotateImage(pictureOfRecord, y);
    image(pictureOfRecord, 0, 0);
    song.play();
  }
  else  {
    song.pause();
  }
}

void setup() {
  minim = new Minim(this);  
  song = minim.loadFile("The Beatles - Eleanor Rigby.mp3", 512);
  size(600, 500);
  pictureOfRecord= loadImage("record.gif");
  image(pictureOfRecord, 0, 0);
}
void rotateImage(PImage image, int amountToRotate) {
  translate(width/2, height/2);
  rotate(amountToRotate*TWO_PI/360);                              
  translate(-image.width/2, -image.height/2);
}

