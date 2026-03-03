  int d = 0;
void setup() {
  size (700,700,P2D);
}

void draw(){
background(71,219,234);
nuke();
}

void nuke() {

translate(350,350);
fill(158,38,28);
stroke(158,38,28);
strokeWeight(5);
line(-50,-120,-50,200);
line(50,-120,50,200);
strokeWeight(7);
noFill();
bezier(-90,-150,-50,-110,50,-110,90,-150);
ellipse(0,-200,200,200);
}
