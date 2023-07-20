void Hexagon(float ox, float oy, float r){
  pushMatrix();
  translate(ox, oy);
  rotate(PI/6);
  beginShape();
  for(int i=1;i<7;i++){
   vertex(r*cos(i*PI/3),r*sin(i*PI/3));
  }
  endShape(CLOSE);
  popMatrix();
}