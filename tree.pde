//Made by Misa Sivonen

float ang=PI/7;
float h;

void setup() {
  size(1000, 800);
  background(55);
  fill(77, 111, 33);
  noStroke();
  //  rect(0, height*.8, width, height);
  grass(.78, .8);
}

void draw() {
  push();
  translate(0, height*.9);
  for (int i=1; i<20; i++) {
    int transu=int(random(-10, 100));
    if (transu>width*.9)translate(-width*.85, 0);
    translate(transu, (random(-10, 10)));
    push();
    branch(random(50, 170));
    pop();
  }
  pop();

  grass(.8, .9);

  noLoop();
}

void branch(float l) {
  stroke(40, 30, 10);
  if (l<10) {
    stroke(random(155, 200), random(50, 140), 0);
  }  
  strokeWeight(l/14);
  ang=PI/random(1.5, 3);
  line(0, 0, 0, -l);
  translate (0, -l);
  if (l>2) {
    push();
    rotate(ang*7/l);
    float multi=random(.5, .9);

    branch(l*multi);
    pop();
    push();
    rotate(-ang*7/l);
    multi=random(.6, .9);

    branch(l*multi);
    pop();

    println(l);
  }
}

void grass(float h, float hh) {

  for (int i=0; i<width; i++) {
    float r=random(66, 88);
    float g=random(100, 120);
    float b=random(27, 40);
    stroke(r, g, b);
    float hei=random(h, hh);
    line(i, height, i, height*hei);
  }
}
