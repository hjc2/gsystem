




class Cpu extends System {

    Random rand = new Random();

    Cpu(){
        super("U");

        this.add("U -> [U r U d U l U]");
        this.add("U -> [U r U d U l U]");
        this.add("U -> [U r U d U l U]");
        this.add("U -> [U r U d U l U]");
        this.add("U -> [U r U d U l U]");
        this.add("U -> [U r U d U l U]");
        this.add("U -> [U r U d U l U]");
        this.add("U -> [U r U d U l U]");

        // has to go to double, or else they will be insufficiently small
        // could also double the length of the drawing.
        this.add("U -> [K r U d U l U]");
        this.add("U -> [U r K d U l U]");
        this.add("U -> [U r U d K l U]");
        this.add("U -> [U r U d U l K]");

        this.add("r -> rr");
        this.add("d -> dd");
        this.add("l -> ll");

        this.add("K -> K");



        // this doubling preserves the size of the squares as the len divides every time.
        // this.add("x -> xx"); 
        // this.add("y -> yy");
        // this.add("z -> zz");
        // this.add("q -> qq");
    }

    public void draw(){

        noFill();
        rectMode(CORNER);

        for(int i=0; i<value.length(); i++) {
            
            char c = value.charAt(i);
            
            float len = (height) / pow(2,n);

            if(c == 'U'){
                // rect(0,0,len,len);
                line(0,0,len,0);
                translate(len,0);
                line(0,0,0,len);
                translate(0,len);
                line(0,0,-len,0);
                translate(-len,0);
                line(0,0,0,-len);
                translate(0,-len);
                // these two do the same thing
            }

            if(c == 'r'){translate(len,0);}
            if(c == 'd'){translate(0,len);}
            if(c == 'l'){translate(-len,0);}

            if(c == '['){pushMatrix();}
            if(c == ']'){popMatrix();}

            if(c == 'K'){
                
            }
        }
    }

}
