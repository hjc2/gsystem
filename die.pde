







class Die extends System {

    Die(){
        super("D");

        this.add("D -> DSR");
    }

    public void draw(){

        noFill();
        rectMode(CENTER);

        translate(width / 2, height / 2);

        pushMatrix();

        for(int i=0; i<value.length(); i++) {

            char c = value.charAt(i);
            
            float len = (height) / pow(2,n);

            if(c == 'S') {
                scale(2);
            }

            if(c == 'R'){
                rect(0, 0, len, len);
            }
        
        }

        popMatrix();

    }


}