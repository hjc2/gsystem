


class System {

    public String axiom;

    public String currentState;

    public int n;

    HashMap<Character,String> rules = new HashMap<Character,String>();


    public System(String a){

        this.axiom = a;
        this.currentState = a;
        this.n = 0;
    }
    
    void add(char k, String str){
      rules.put(k,str);
      
    }

    void add(String str){
        String trimStr = str.replace(" ", "");
        
        String[] parts = trimStr.split("->");

        println(parts);
        println("yoink");
    }



    String update() {
      StringBuilder newState = new StringBuilder();
      for (int i = 0; i < currentState.length(); i++) {
          char currentChar = currentState.charAt(i);
          String rule = rules.get(currentChar);
          if (rule != null) {
              newState.append(rule);
          } else {
              newState.append(currentChar);
          }
      }
      currentState = newState.toString();

      n++;
      return currentState;
  }
}