


import java.util.Random;




class Die extends System {

    Random rand = new Random();

    Die(){
        super("U");

        this.add("U -> [U r U d U l U]");
        this.add("r -> rr");
        this.add("d -> dd");
        this.add("l -> ll");
        // this.add("k -> kk");
    }

    public void draw(){

        noFill();
        rectMode(CORNER);

        // translate(width / 2, height / 2);


        for(int i=0; i<value.length(); i++) {

            char c = value.charAt(i);
            
            float len = (height) / pow(2,n);

            if(c == 'U'){
                if(rand.nextInt(100) > 80){ rect(0,0,len,len);}
            }
            if(c == 'r'){translate(len,0);}
            if(c == 'd'){translate(0,len);}
            if(c == 'l'){translate(-len,0);}

            if(c == '['){pushMatrix();}
            if(c == ']'){popMatrix();}
        }


    }


}