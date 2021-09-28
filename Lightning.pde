void setup() {
  size(1000,600);
  color(128,128,128);
  Background();
}
double x_old = 500;
double y_old = 100;
double random;
double x_new = x_old;
double y_new = y_old;
int i = 0;

void mousePressed() {
  i +=1;
  x_old = 250+500*Math.random();
  if (x_old < 312.5) {
    y_old = Math.sqrt(10000-(x_old-250)*(x_old-250));
  } else if (x_old < 437.5) {
    y_old = Math.sqrt(10000-(x_old-375)*(x_old-375));
  } else if (x_old < 562.5) {
    y_old = Math.sqrt(10000-(x_old-500)*(x_old-500));
  } else if (x_old < 687.5) {
    y_old = Math.sqrt(10000-(x_old-625)*(x_old-625));
  } else {
    y_old = Math.sqrt(10000-(x_old-750)*(x_old-750));
  }
  if (i == 5){
    i = 0;
    Background();
  }
}

void Background() {
  background(135,206,235);
  strokeWeight(0);
  stroke(128);
  fill(128);
  ellipse(250,0,200,200);
  ellipse(375,0,200,200);
  ellipse(500,0,200,200);
  ellipse(625,0,200,200);
  ellipse(750,0,200,200);
  stroke(0,128,0);
  fill(0,128,0);
  rect(0,550,1000,50);
  strokeWeight(4);
}

void draw() {
  stroke((float) (256*Math.random()),(float) (256*Math.random()),(float) (256*Math.random()));
  while (y_old < 550) { 
    if (y_old <= 500) {
      random = 2*Math.random()-1;
      x_new = x_old + (50*random)/(Math.sqrt(random*random+1));
      y_new = y_old + 50/(Math.sqrt(random*random+1));
      line((float) x_old, (float) y_old, (float) x_new, (float) y_new);
      x_old = x_new;
      y_old = y_new;  
    } else {
    x_new = x_old;
    y_new = 550;
    line((float) x_old, (float) y_old, (float) x_new, (float) y_new);
    x_old = x_new;
    y_old = y_new;
    }  
  }
}
