/// Determine if parentheses are valid using Stack
// Example: s = '(){}[]' -> true
// s = '{[]}' -> true and s = '(]' -> false
void main () {

  print(isValidParentheses('()[]{}'));

}

bool isValidParentheses(String s){

  // Defining a list to use as a stack
  List<String> stack = [];

  // Defining a Map to store the closing brackets according to their opening brackets
  final Map<String, String> pairs = {
    ')' : '(',
    '}' : '{',
    ']' : '['
  };

  // Defining a String to mark the opening brackets
  String openingBrackets = '({[';

  for(int i =0; i < s.length; i++){

    // if bracket is opening add it to Stack
    if (openingBrackets.contains(s[i])){

      stack.add(s[i]);

      // else closing bracket
    } else {

      // if stack empty meaning first bracket is already closing so the entire String is invalid
      if(stack.isEmpty) return false;

      // if stack is not empty remove the last element from on top of the stack
      final recent = stack.removeLast();

      // check if String contains parentheses or other characters like abc. if not parentheses return false
      if(!pairs.containsKey(s[i])) return false;

      // compare the closing bracket with the top opening bracket in the stack. ifi dosen't match return false
      if(pairs[s[i]] != recent) return false;
    }
  }

  // if stack is empty meaning all opening bracket is gone
  return stack.isEmpty;

}