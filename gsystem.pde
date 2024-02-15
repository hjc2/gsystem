

Koch s = new Koch();
Snowflake snow = new Snowflake();
Die die = new Die();

void setup() {

  size(800, 800);

  stroke(255);

}


void draw(){

  background(0);

  die.draw();
}



void keyPressed(){

    if(keyCode == UP) {

      die.update();

    }

    if(keyCode == DOWN) {

      die.back();

    }
}