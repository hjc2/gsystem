

Koch koch = new Koch();
Snowflake snowflake = new Snowflake();

Square square = new Square();
Die die = new Die();

Explosion exp = new Explosion();

Dynamics dynamics = new Dynamics();
System current = exp;


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

  if(keyCode == DOWN && current.n > 0) {
    current.back();
    println(current.value);
  }

  if(keyCode == 'k' || keyCode == 'K'){
    current = koch;
  }

  if(keyCode == 'i' || keyCode == 'I'){
    println(current.value);
  }
}
