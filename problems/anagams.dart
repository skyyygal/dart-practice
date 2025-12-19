import 'dart:io';

void main() {
  //  Anagrams
  stdout.write("Enter word 1: ");

  String? word1 = stdin.readLineSync();
  // String word1 = "anita";
  stdout.write("Enter word 2: ");
  String? word2 = stdin.readLineSync();
  List<String> toList = word1!.split("").toList();
  toList.sort();
  String wordOne = toList.join("");
  List<String> toList2 = word2!.split("").toList();
  toList2.sort();
  String wordTwo = toList2.join("");
  if (wordOne == wordTwo) {
    print("This word is a Anagrams");
  }
}
