void main() {
  //PALINDROME CHECKER
  List<int> numbers = [1, 2, 3, 4, 5];
  var num = numbers.reversed;
  print(num);
  var text = "A man, a plan, a canal: Panama".toLowerCase();
  var replacedText = text.replaceAll(RegExp(r'[^a-z0-9]'), "");
  //       .replaceAll(" ", "")
  //       .replaceAll(",", "")
  //       .replaceAll(":", "");
  var chars = replacedText.split("").reversed.join();
  if (replacedText == chars) {
    print("$replacedText is a palindrome");
  } else {
    print("$replacedText is not a palindrome");
  }
}




// Without reverse 

/* 


void main() {
  String rev = "";
  var text = "A man, a plan, a canal: Panama".toLowerCase().replaceAll(
    RegExp(r'[^a-z0-9]'),
    "",
  );
  for (var i = text.length - 1; i >= 0; i--) {
    rev += text[i];
  }
  if (text == rev) {
    print("$text is a palindrome");
  } else {
    print("$text is not a palindrome");
  }
  print(rev);
}


 */