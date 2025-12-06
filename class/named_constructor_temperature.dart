class Temperature {
  double celsius;
  Temperature.celsius(this.celsius);
  Temperature.farenheit(double farenheit) : celsius = (farenheit - 32) / 1.8;
}

void main() {
  final temp1 = Temperature.celsius(60);
  final temp2 = Temperature.farenheit(90);
  print(temp2.celsius);
  temp1.celsius = 32;
}

// next: gettet_setter.dart
