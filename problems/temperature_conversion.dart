void main() {
  double celsius = 100;
  double fahrenheit = 32;
  print(celsiusToFahrenheit(celsius));
  print(fahrenheitToCelsius(fahrenheit));
}

double celsiusToFahrenheit(double c) {
  double fahrenheit = (c * 9 / 5) + 32;
  return fahrenheit;
}

double fahrenheitToCelsius(double f) {
  double celsius = (f - 32) * 5 / 9;
  return celsius;
}
