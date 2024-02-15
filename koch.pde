


class Koch extends System {

    Koch(){
        super("F");

        this.add("F -> F-F++F-F");
    }

    public void draw(){

        translate(width/2,height);
        for(int i=0; i<value.length(); i++) {

            char c = value.charAt(i);
            float len = height / pow(3,n);
            if(c == 'F') {
            line(0,0, 0,-len);
            translate(0,-len);
            }
            if(c == '-') { rotate(-PI/3); }
            if(c == '+') { rotate(PI/3); }
        }
    }

}