  int d = 0;
void setup() {
  size (900,700,P2D);
}

void draw(){
background(71,219,234);
nuke();
}

void nuke() {


//mushroom cloud
pushMatrix();
translate(450,450);
strokeWeight(7);
fill(239,96,45);
beginShape();
vertex(115,-330);
bezierVertex(180,-350,230,-350,250,-260);
bezierVertex(300,-200,300,-120,190,-100);
bezierVertex(190,0,100,-20,60,-40);
endShape();

strokeWeight(7);
fill(239,96,45);
beginShape();
vertex(-115,-330);
bezierVertex(-180,-350,-230,-350,-250,-260);
bezierVertex(-300,-200,-300,-120,-190,-100);
bezierVertex(-190,0,-100,-20,-60,-40);
endShape();
bezier(-120,-325,-75,-425,75,-425,120,-325);
noStroke();
beginShape();
vertex(-120,-325);
vertex(120,-325);
vertex(60,-40);
vertex(-60,-40);
endShape();
popMatrix();

pushMatrix();
translate(450,500);
fill(158,38,28);
stroke(158,38,28);
strokeWeight(5);
line(-50,-120,-50,200);
line(50,-120,50,200);


//coloring
fill(254,232,88);
rect(-50,-120,100,320,20);
fill(253,238,52);
noStroke();
rect(-50,-120,100,150,20);
stroke(158,38,28);
strokeWeight(10);
noFill();
bezier(-90,-150,-50,-110,50,-110,90,-150);
popMatrix();

}
