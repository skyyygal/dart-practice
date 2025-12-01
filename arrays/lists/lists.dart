//List Methods in dart
void main() {
  List<String> cities = ['Lucknow', 'Bengaluru', 'Chennai'];
  print(cities.length);
  print(cities.first);
  // cities.add('Hyderabad');
  // cities.addAll(['Ballia, Karaikal, Banaras']);
  // cities.insert(1, 'Luck');
  var replace = ['Ballia, Karaikal, Banaras'];
  print(cities);
  print("object");
  cities.replaceRange(3, 0, replace);
  print(cities);
}
