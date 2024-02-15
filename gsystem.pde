

int len = 50;

float angle = PI / 2;


Koch s = new Koch();
Snowflake snow = new Snowflake();

void setup() {

  size(800, 800);

  stroke(255);
}


void draw(){

  background(0);

  // s.draw();

  snow.draw();

}



void keyPressed(){

    if(keyCode == UP) {
      snow.update();
      // s.update();
    }

    if(keyCode == DOWN) {
      snow.update();
      // s.back();
    }
}