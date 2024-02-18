





class Explosion extends System {

    int depth = 1;
    Explosion(){
        super("E");

        this.add("E -> E[-E]");
        this.add("E -> E[+E+E]");
        this.add("E -> E");
    }

    public void draw(){

        translate(width/2,height / 2);

        noStroke();
        // stroke(255,0,255);
        fill(255,0,255,50);


        for(int i=0; i<value.length(); i++) {

            char c = value.charAt(i);
            float len = height / pow(2,depth);

            if(c == 'E'){
                circle(0,0,len);
            }

            if(c == '-'){
                rotate(-PI/6);
                translate(0,80);
            }
            if(c == '+'){
                rotate(PI/6);
                translate(0,80);
            }

            if(c == '['){pushMatrix(); depth += 1;}
            if(c == ']'){popMatrix(); depth -= 1;}
        }
    }

}