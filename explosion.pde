





class Explosion extends System {

    int depth = 1;
    Explosion(){
        super("E");

        this.add("E -> E[+[ME]+[ME]+[ME]]");
        this.add("E -> E[++[ME]+++[ME]++++[ME]]");
        this.add("E -> E[+++++[ME]++[ME]+[ME]]");

    }

    public void draw(){

        translate(width/2,height / 2);

        noStroke();
        // stroke(255,0,255);

                    color from = color(204, 102, 0);
            color to = color(0, 102, 153);

        for(int i=0; i<value.length(); i++) {


            color l = lerpColor(from, to, depth / 10.0);

            fill(l);
            char c = value.charAt(i);
            float len = height / (depth + 1);

            if(c == 'E'){
                circle(0,0,len);
            }

            if(c == 'M'){
                translate(100 + (200 / depth),0);
            }

            if(c == '-'){
                rotate(-PI/3);
            }
            if(c == '+'){
                rotate(-PI / 3);
            }



            if(c == '['){pushMatrix(); depth += 1;}
            if(c == ']'){popMatrix(); depth -= 1;}
        }
    }

}