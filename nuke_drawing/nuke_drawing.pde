  int d = 0;

void setup() {
  size (900,700,P2D);
}

void draw(){
background(131,81,76);
noStroke();
fill(76,131,78);
rect(0,500,900,200);
nuke();
}

void nuke() {


//mushroom cloud
pushMatrix();
translate(100,150);
scale(0.5);
pushMatrix();
translate(450,450);
strokeWeight(7);
stroke(130,22,21);
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
noFill();

fill(130,22,21);
stroke(130,22,21);
beginShape();
vertex(-100,-200);
bezierVertex(-50,-150,50,-150,100,-230);
bezierVertex(140,-170,200,-150,240,-200);
bezierVertex(230,-130,150,-100,95,-150);
bezierVertex(30,-100,-20,-100,-100,-140);
bezierVertex(-150,-100,-230,-120,-250,-170);
bezierVertex(-120,-180,-160,-180,-180,-200);
bezierVertex(-200,-170,-220,-160,-250,-170);
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
fill(255,250,192);
rect(-50,-120,100,320,20);
fill(253,238,52);
noStroke();
stroke(158,38,28);
strokeWeight(10);
noFill();
bezier(-90,-150,-50,-110,50,-110,90,-150);
popMatrix();
popMatrix();
}
