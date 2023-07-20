void drawHeart(float  ox, float oy, float size) {
  pushMatrix();
  translate(ox, oy);
  beginShape();
  for (int theta = 0; theta < 360; theta++) {
    float x = size * (16 * sin(radians(theta)) * sin(radians(theta)) * sin(radians(theta)));
    float y = (-1) * size * (13 * cos(radians(theta)) - 5 * cos(radians(2 * theta))
      - 2 * cos(radians(3 * theta)) - cos(radians(4 * theta)));

    vertex(x, y);
  }
  endShape(CLOSE);
  popMatrix();
}