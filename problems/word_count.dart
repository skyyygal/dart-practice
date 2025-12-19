void main() {
  var string = "Hello world, hello Dart! Hello world.".toLowerCase().replaceAll(
    RegExp(r'[^a-z0-9 ]'),
    "",
  );
  Map<String, int> wordCount = {};

  final splitted = string.split(" ");
  for (var i = 0; i <= splitted.length - 1; i++) {
    if (splitted[i].isNotEmpty) {
      if (wordCount.containsKey(splitted[i])) {
        wordCount[splitted[i]] = wordCount[splitted[i]]! + 1;
      } else {
        wordCount[splitted[i]] = 1;
      }
    }
  }
  print(wordCount);
}
