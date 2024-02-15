




class Snowflake extends System {

    Snowflake(){
        super("F*F*F*");

        this.add("F -> F-F++F-F");
    }

    public void draw(){

        translate(width / 2 - 190,height - 80);
        for(int i=0; i<value.length(); i++) {

            char c = value.charAt(i);
            float len = (height - 160) / pow(3,n);
            if(c == 'F') {
            line(0,0, 0,-len);
            translate(0,-len);
            }
            if(c == '-') { rotate(-PI/3); }
            if(c == '+') { rotate(PI/3); }
            if(c == '*') {rotate(2 * PI / 3); }
        }
    }

}