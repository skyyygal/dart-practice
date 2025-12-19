void main() {
  String s = "(,[,[,],(,){,},],)";
  print(isValid(s)); // true
}

bool isValid(String s) {
  List<String> stack = [];
  Map<String, String> pairs = {')': '(', '}': '{', ']': '['};

  for (int i = 0; i < s.length; i++) {
    String char = s[i];
    if (pairs.containsValue(char)) {
      stack.add(char);
    } else if (pairs.containsKey(char)) {
      if (stack.isEmpty || stack.removeLast() != pairs[char]) {
        return false;
      }
    }
  }
  return stack.isEmpty;
}





/// Problem: Valid Parentheses
/// Task: Given a string s containing just the characters (, ), {, }, [, ], determine if the input string is valid.

/// A string is valid if:

/// Open brackets are closed by the same type.

/// Open brackets are closed in the correct order.

/// Examples:

/// "()" → true

/// "()[]{}" → true

/// "(]" → false

/// "([)]" → false (wrong order)

/// "{[]}" → true

