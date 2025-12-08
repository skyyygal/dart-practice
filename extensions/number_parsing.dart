extension NumberParsing on String {
  //this extension have no same, we can still access it because it's in the same file. What if it's in different file? //Add a name to it and access.
  int? toIntOrNull2() => int.tryParse(this);
}
