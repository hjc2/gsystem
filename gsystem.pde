

int len = 50;

float angle = PI / 2;


System s = new System("F");

void setup() {
  
  s.add("F -> F-F++F-F");

  size(800, 800);

  stroke(255);
}


void draw(){

  background(0);

  drawKoch(s);

}


void drawKoch(System sys){

    int level = sys.n;
    String koch = sys.value;

    translate(width/2,height);
    for(int i=0; i<koch.length(); i++) {

      char c = koch.charAt(i);
      float len = height / pow(3,level);
      if(c == 'F') {
        line(0,0, 0,-len);
        translate(0,-len);
      }
      if(c == '-') { rotate(-PI/3); }
      if(c == '+') { rotate(PI/3); }
    }

}


void keyPressed(){

    if(keyCode == UP) {
      s.update();
    }

    if(keyCode == DOWN) {
      s.back();
    }
}