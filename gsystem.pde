

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

  // translate(300,400);
  // // scale(0.5);
  // rect(0,0,400,400);
  // stroke(255,0,0);
  // line(0,0,-200,200);
}



void keyPressed(){

    if(keyCode == UP) {

      die.update();
      println(die.value);

    }

    if(keyCode == DOWN) {

      die.back();

    }
}