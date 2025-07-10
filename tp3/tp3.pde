// https://www.youtube.com/watch?v=scyBsaiMf_4
PImage obra;
void setup() {
  obra = loadImage("IMG.png");
  size (800, 400);
}
void draw() {
  obra(width/2, 0, width/8);
  image (obra, 0, 0, width/2, height);
}
