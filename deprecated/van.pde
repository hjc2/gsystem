// Assuming System is a base class for L-systems
public class Van extends System {

    // Constructor for Van class
    public Van() {
        super("F r F"); // Calls the constructor of the base class with initial string
        
        // Adding rules to the system
        this.add("F -> F+F-F-F+F"); // Rule 1: F remains unchanged
    }


    public void draw() {
        // Setting the initial position for drawing
        translate(width / 2 - 190, height - 80);

        // Iterating over the generated string from the L-system
        for(int i=0; i<value.length(); i++) {
            
            char c = value.charAt(i);
            
            float len = (height) / pow(3,n);


            // Drawing logic based on the character
            if (c == 'F') {
                line(0, 0, 0, -len); // Draw a line for 'F'
                translate(0, -len); // Move the current position
            }
            if (c == '-') {
                rotate(-PI / 3); // Rotate left
            }
            if (c == '+') {
                rotate(PI / 3); // Rotate right
            }
            if (c == '*') {
                rotate(2 * PI / 3); // Rotate 120 degrees, assuming '*' is a valid operation
            }
        }
    }
}
