

Koch s = new Koch();
Snowflake snow = new Snowflake();

Square square = new Square();
Die die = new Die();

System current = square;

void setup() {

  size(800, 800);

  stroke(255);

}


void draw(){

  background(0);

  current.draw();
}



void keyPressed(){

    if(keyCode == UP) {

      current.update();
      println(current.value);
    }

    if(keyCode == DOWN) {
      current.back();
    }
}
