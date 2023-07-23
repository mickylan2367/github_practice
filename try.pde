//firstProject.pde
void setup()
{
  size(600,600);
  background(0,255,0);
}

void draw(){
  Hexagon(3, 3, 6);
  flower();

  for(float i=0;i<8;i+= 0.01){
    Triangle(width/2, height/2, i);
  }
}