







class Die extends System {

    Die(){
        super("D");

        this.add("D -> DLD");
    }

    public void draw(){

        noFill();

        translate(width * 2 / 3,height / 2);

        for(int i=0; i<value.length(); i++) {

            char c = value.charAt(i);
            
            float len = (height) / pow(2,n);

            if(c == 'D' || c == 'P') {
                rect(0, 0, 20, -len);
            }

            if(c == '[') { pushMatrix(); }
            if(c == ']') { popMatrix(); }

            if(c == 'U') { translate(0,-len);}

            if(c == 'L') {
                translate(-len,0);
            }

            
            // if(c == '-') { rotate(-PI/3); }
            // if(c == '+') { rotate(PI/3); }
            // if(c == '*') {rotate(2 * PI / 3); }
        }

    }


}