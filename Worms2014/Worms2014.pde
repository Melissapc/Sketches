void setup() {
  size(700, 600);
  background(221, 000, 119);
}

void draw() {

  for (int i = 0; i < 100; ++i) {
    float wormx= getWormX(i); 
    float wormy= getWormY(i);
    fill(frameCount,i,200);
    ellipse(wormx, wormy, 60, 70);
  }
}

float getWormX(int i) {
  return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}
float frequency = .100;
float noiseInterval = PI;
float getWormY(int i) {
  return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}

