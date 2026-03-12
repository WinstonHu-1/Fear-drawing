  int x = 100;
  float y = 500;
  float s = 0.8;
  int counter = 0;
  float y1 = 950;
  float y2 = 1400;
void setup() {
  size (900,700,P2D);
}

void draw(){
background(131,81,76);

//buildings
fill(216,191,125);
rect(100,100,200,500);
fill(198,211,141);
rect(500,100,200,500);
fill(245,238,15);
rect(125,125,50,50);
rect(225,125,50,50);
rect(125,200,50,50);
rect(225,200,50,50);
rect(125,275,50,50);
rect(225,275,50,50);
rect(125,350,50,50);
rect(225,350,50,50);
rect(125,425,50,50);
rect(225,425,50,50);
rect(525,125,50,50);
rect(625,125,50,50);
rect(525,200,50,50);
rect(625,200,50,50);
rect(525,275,50,50);
rect(625,275,50,50);
rect(525,350,50,50);
rect(625,350,50,50);
rect(525,425,50,50);
rect(625,425,50,50);

nuke(100,y,s);

y=y-5;

if (y<-10) {
  y=-10;
  
}

nuke(-150,y1,s);

y1=y1-5;

if (y1<-10) {
  y1=-10;
  
}

nuke(300,y2,s);
y2=y2-5;

if (y2<-10) {
  y2=-10;
  
}



noStroke();
fill(76,131,78);
rect(0,500,900,200);

counter = counter+10;
if (counter<30) {
  flash();
}

if (counter>30) {
  noFlash();

}

if (counter ==60) {
  counter=0;
}
}

void flash() {
 fill(180,174,160,50);
 rect(0,0,900,700);
}

void noFlash() {
 noFill();
 noStroke();
 rect(0,0,900,700);
}

void nuke(int x, float y,float s) {


//mushroom cloud
pushMatrix();
translate(x,y);
scale(s);
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

fill(242,117,33,90);
ellipse(0,-180,500,200);
fill(254,233,50,20);
ellipse(0,-180,300,200);
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
ellipse(-170,-170,50,50);

popMatrix();



pushMatrix();
translate(450,500);
fill(158,38,28);
stroke(158,38,28);
strokeWeight(5);
line(-50,-120,-50,200);
line(50,-120,50,200);

noStroke();
//coloring

fill(251,250,127);
rect(-50,-120,100,320,20);
fill(253,238,52);
noStroke();
stroke(158,38,28);
strokeWeight(10);
noFill();
bezier(-90,-150,-50,-110,50,-110,90,-150);

//smoke
noStroke();
fill(180,174,160,75);
ellipse(0,200,400,300);
ellipse(-100,200,300,200);
ellipse(100,200,300,200);
fill(253,212,41,50);
ellipse(0,0,800,50);
popMatrix();
popMatrix();
}
