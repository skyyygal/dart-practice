class Temperature {
  double
  celsius; // <-- Stored variables(regular variables are stored in memory)
  double get farenheit => celsius * 1.8 + 32; //getter fn
  set farenheit(double farenheit) => celsius = (farenheit - 32) / 1.8;

  Temperature.celsius(this.celsius);
  Temperature.farenheit(double farenheit) : celsius = (farenheit - 32) / 1.8;

  //when ever you call "get" you need to defina a getter body - also known as computed variables.
}

void main() {
  final temp1 = Temperature.celsius(60);
  final temp2 = Temperature.farenheit(90);
  print(temp2.celsius);
  temp1.celsius = 32;
  temp1.farenheit = 90;
}
