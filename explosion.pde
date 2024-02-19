





class Explosion extends System {

    int depth = 1;
    Explosion(){
        super("A");

        prep();        
    }



    public void draw(){

        translate(width/2,height / 2);

        noStroke();

        // color blue = color(255, 255, 0, 60);
        // color yellow = color(255, 0, 255, 60);
                // color k = lerpColor(blue, yellow, size / 23.0);
                // fill(k);

        int size = 1;
                
        fill(90,90,90,20);

        color grey = color(40,40,40,0);
        color orange = color(255,165,0, 150);

        for(int i=0; i<value.length(); i++) {
            char c = value.charAt(i);
            float len = height / (n + 1);

            noStroke();

            if(c == 'a' || c == 'A'){
                
                color cv = lerpColor(grey, orange, size / 18.0);
                fill(cv);
                circle(0,0, 200 / ((size + 3) / 2) );
            }

            if(c == '+'){
                // rotate(-PI/6 * random.nextInt(12)); 
                rotate(-PI / 6);
            }
            if(c == 'm'){
                strokeWeight(1);
                stroke(40,40,40);
                // line(0,0,0,300 / size);
                translate(0, 300 / size);
            }

            if(c == 'R'){
                size--;
            }

            if(c == 'E'){
                size++;
            }

            if(c == '['){pushMatrix(); size++;}
            if(c == ']'){popMatrix(); size--;}
        }
    }


    void prep(){
        this.add("A -> a[mA] [mA]");
        this.add("A -> a[mA] [+mA]");
        this.add("A -> a[mA] [++mA]");
        this.add("A -> a[mA] [+++mA]");
        this.add("A -> a[mA] [++++mA]");
        this.add("A -> a[mA] [+++++mA]");
        this.add("A -> a[mA] [++++++mA]");
        this.add("A -> a[mA] [+++++++mA]");
        this.add("A -> a[mA] [++++++++mA]");
        this.add("A -> a[mA] [+++++++++mA]");
        this.add("A -> a[mA] [++++++++++mA]");
        this.add("A -> a[mA] [+++++++++++mA]");
        this.add("A -> a[+mA] [mA]");
        this.add("A -> a[+mA] [+mA]");
        this.add("A -> a[+mA] [++mA]");
        this.add("A -> a[+mA] [+++mA]");
        this.add("A -> a[+mA] [++++mA]");
        this.add("A -> a[+mA] [+++++mA]");
        this.add("A -> a[+mA] [++++++mA]");
        this.add("A -> a[+mA] [+++++++mA]");
        this.add("A -> a[+mA] [++++++++mA]");
        this.add("A -> a[+mA] [+++++++++mA]");
        this.add("A -> a[+mA] [++++++++++mA]");
        this.add("A -> a[+mA] [+++++++++++mA]");
        this.add("A -> a[++mA] [mA]");
        this.add("A -> a[++mA] [+mA]");
        this.add("A -> a[++mA] [++mA]");
        this.add("A -> a[++mA] [+++mA]");
        this.add("A -> a[++mA] [++++mA]");
        this.add("A -> a[++mA] [+++++mA]");
        this.add("A -> a[++mA] [++++++mA]");
        this.add("A -> a[++mA] [+++++++mA]");
        this.add("A -> a[++mA] [++++++++mA]");
        this.add("A -> a[++mA] [+++++++++mA]");
        this.add("A -> a[++mA] [++++++++++mA]");
        this.add("A -> a[++mA] [+++++++++++mA]");
        this.add("A -> a[+++mA] [mA]");
        this.add("A -> a[+++mA] [+mA]");
        this.add("A -> a[+++mA] [++mA]");
        this.add("A -> a[+++mA] [+++mA]");
        this.add("A -> a[+++mA] [++++mA]");
        this.add("A -> a[+++mA] [+++++mA]");
        this.add("A -> a[+++mA] [++++++mA]");
        this.add("A -> a[+++mA] [+++++++mA]");
        this.add("A -> a[+++mA] [++++++++mA]");
        this.add("A -> a[+++mA] [+++++++++mA]");
        this.add("A -> a[+++mA] [++++++++++mA]");
        this.add("A -> a[+++mA] [+++++++++++mA]");
        this.add("A -> a[++++mA] [mA]");
        this.add("A -> a[++++mA] [+mA]");
        this.add("A -> a[++++mA] [++mA]");
        this.add("A -> a[++++mA] [+++mA]");
        this.add("A -> a[++++mA] [++++mA]");
        this.add("A -> a[++++mA] [+++++mA]");
        this.add("A -> a[++++mA] [++++++mA]");
        this.add("A -> a[++++mA] [+++++++mA]");
        this.add("A -> a[++++mA] [++++++++mA]");
        this.add("A -> a[++++mA] [+++++++++mA]");
        this.add("A -> a[++++mA] [++++++++++mA]");
        this.add("A -> a[++++mA] [+++++++++++mA]");
        this.add("A -> a[+++++mA] [mA]");
        this.add("A -> a[+++++mA] [+mA]");
        this.add("A -> a[+++++mA] [++mA]");
        this.add("A -> a[+++++mA] [+++mA]");
        this.add("A -> a[+++++mA] [++++mA]");
        this.add("A -> a[+++++mA] [+++++mA]");
        this.add("A -> a[+++++mA] [++++++mA]");
        this.add("A -> a[+++++mA] [+++++++mA]");
        this.add("A -> a[+++++mA] [++++++++mA]");
        this.add("A -> a[+++++mA] [+++++++++mA]");
        this.add("A -> a[+++++mA] [++++++++++mA]");
        this.add("A -> a[+++++mA] [+++++++++++mA]");
        this.add("A -> a[++++++mA] [mA]");
        this.add("A -> a[++++++mA] [+mA]");
        this.add("A -> a[++++++mA] [++mA]");
        this.add("A -> a[++++++mA] [+++mA]");
        this.add("A -> a[++++++mA] [++++mA]");
        this.add("A -> a[++++++mA] [+++++mA]");
        this.add("A -> a[++++++mA] [++++++mA]");
        this.add("A -> a[++++++mA] [+++++++mA]");
        this.add("A -> a[++++++mA] [++++++++mA]");
        this.add("A -> a[++++++mA] [+++++++++mA]");
        this.add("A -> a[++++++mA] [++++++++++mA]");
        this.add("A -> a[++++++mA] [+++++++++++mA]");
        this.add("A -> a[+++++++mA] [mA]");
        this.add("A -> a[+++++++mA] [+mA]");
        this.add("A -> a[+++++++mA] [++mA]");
        this.add("A -> a[+++++++mA] [+++mA]");
        this.add("A -> a[+++++++mA] [++++mA]");
        this.add("A -> a[+++++++mA] [+++++mA]");
        this.add("A -> a[+++++++mA] [++++++mA]");
        this.add("A -> a[+++++++mA] [+++++++mA]");
        this.add("A -> a[+++++++mA] [++++++++mA]");
        this.add("A -> a[+++++++mA] [+++++++++mA]");
        this.add("A -> a[+++++++mA] [++++++++++mA]");
        this.add("A -> a[+++++++mA] [+++++++++++mA]");
        this.add("A -> a[++++++++mA] [mA]");
        this.add("A -> a[++++++++mA] [+mA]");
        this.add("A -> a[++++++++mA] [++mA]");
        this.add("A -> a[++++++++mA] [+++mA]");
        this.add("A -> a[++++++++mA] [++++mA]");
        this.add("A -> a[++++++++mA] [+++++mA]");
        this.add("A -> a[++++++++mA] [++++++mA]");
        this.add("A -> a[++++++++mA] [+++++++mA]");
        this.add("A -> a[++++++++mA] [++++++++mA]");
        this.add("A -> a[++++++++mA] [+++++++++mA]");
        this.add("A -> a[++++++++mA] [++++++++++mA]");
        this.add("A -> a[++++++++mA] [+++++++++++mA]");
        this.add("A -> a[+++++++++mA] [mA]");
        this.add("A -> a[+++++++++mA] [+mA]");
        this.add("A -> a[+++++++++mA] [++mA]");
        this.add("A -> a[+++++++++mA] [+++mA]");
        this.add("A -> a[+++++++++mA] [++++mA]");
        this.add("A -> a[+++++++++mA] [+++++mA]");
        this.add("A -> a[+++++++++mA] [++++++mA]");
        this.add("A -> a[+++++++++mA] [+++++++mA]");
        this.add("A -> a[+++++++++mA] [++++++++mA]");
        this.add("A -> a[+++++++++mA] [+++++++++mA]");
        this.add("A -> a[+++++++++mA] [++++++++++mA]");
        this.add("A -> a[+++++++++mA] [+++++++++++mA]");
        this.add("A -> a[++++++++++mA] [mA]");
        this.add("A -> a[++++++++++mA] [+mA]");
        this.add("A -> a[++++++++++mA] [++mA]");
        this.add("A -> a[++++++++++mA] [+++mA]");
        this.add("A -> a[++++++++++mA] [++++mA]");
        this.add("A -> a[++++++++++mA] [+++++mA]");
        this.add("A -> a[++++++++++mA] [++++++mA]");
        this.add("A -> a[++++++++++mA] [+++++++mA]");
        this.add("A -> a[++++++++++mA] [++++++++mA]");
        this.add("A -> a[++++++++++mA] [+++++++++mA]");
        this.add("A -> a[++++++++++mA] [++++++++++mA]");
        this.add("A -> a[++++++++++mA] [+++++++++++mA]");
        this.add("A -> a[+++++++++++mA] [mA]");
        this.add("A -> a[+++++++++++mA] [+mA]");
        this.add("A -> a[+++++++++++mA] [++mA]");
        this.add("A -> a[+++++++++++mA] [+++mA]");
        this.add("A -> a[+++++++++++mA] [++++mA]");
        this.add("A -> a[+++++++++++mA] [+++++mA]");
        this.add("A -> a[+++++++++++mA] [++++++mA]");
        this.add("A -> a[+++++++++++mA] [+++++++mA]");
        this.add("A -> a[+++++++++++mA] [++++++++mA]");
        this.add("A -> a[+++++++++++mA] [+++++++++mA]");
        this.add("A -> a[+++++++++++mA] [++++++++++mA]");
        this.add("A -> a[+++++++++++mA] [+++++++++++mA]");
    }

}