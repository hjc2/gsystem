
    // will take in a set of explosion data VIA fractal

    // this will be based on the 








class Dynamics extends System {

    int depth = 1;

    int position = 1;

    int[] seed = new int[100];


    Dynamics(){
        super("A");
        this.add("A -> a[mA] [+++mA]");
        this.add("A -> a[++++++mA] [++++++++++mA]");
        this.add("A -> a[++++mA] [+++++++++++mA]");
        for (int i = 0; i < seed.length; i++) {
            seed[i] = random.nextInt(12) + 1;
        }
    }

    public void draw(){

        translate(width/2,height / 2);

        noStroke();

        int size = 1;
                
        fill(90,90,90, 255);

        for(int i=0; i<value.length(); i++) {
            char c = value.charAt(i);
            float len = height / (n + 1);

            noStroke();

            if(c == 'a' || c == 'A'){
                circle(0,0, 50);
            }

            if(c == '+'){
                if(position >= 100){
                    position = 0;
                }
                // rotate(-PI / 6 * seed[position]);
                rotate(-PI / 6);
                position++;
            }
            if(c == 'm'){
                translate(0, 100);
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
            position = 0;

    }

}