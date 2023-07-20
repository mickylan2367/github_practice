

// /*間違って消しませんよう
void flower (float ox, float oy, float size, float n, float k) {
  pushMatrix();
  translate(ox, oy);

  beginShape();
  for (float theta=0; theta<360; theta+=0.06) {

    float r = sin(n*theta/k);//極座標

    float x=size*r*cos(theta);
    float y=size*r*sin(theta);

    vertex(x, y);
  }
  endShape(CLOSE);
  popMatrix();
}