
import java.util.Stack;


class System {

    public String axiom;
    public String value;
    public int n;

    Stack<String> stack;

    HashMap<Character,String> rules = new HashMap<Character,String>();


    public System(String a){

        this.axiom = a;
        this.value = a;
        this.n = 0;
        stack = new Stack<>();
    }
    
    void add(char k, String str){
      rules.put(k,str);
    }

    void add(String str){
        String trimStr = str.replace(" ", "");
        
        String[] parts = trimStr.split("->");
        char tmp = parts[0].charAt(0);

        rules.put(tmp, parts[1]);
    }



    String update() {

     stack.push(value);

      StringBuilder newState = new StringBuilder();
      for (int i = 0; i < value.length(); i++) {
          char currentChar = value.charAt(i);
          String rule = rules.get(currentChar);
          if (rule != null) {
              newState.append(rule);
          } else {
              newState.append(currentChar);
          }
      }
      value = newState.toString();

      n++;
      return value;
    }

    void back(){
        value = stack.pop();
        n--;
    }
}   