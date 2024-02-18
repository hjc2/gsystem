

Koch koch = new Koch();
Snowflake snowflake = new Snowflake();

Square square = new Square();
Die die = new Die();

System current = die;

int k = 1;

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

    // String filename = "image" + k + ".jpg";
    // save(filename);
    // k++; // Increment the counter
  }

  if(keyCode == DOWN) {
    current.back();
    println(current.value);
  }

  if(keyCode == 'k' || keyCode == 'K'){
    current = koch;
  }
}
