class PositiveInt {
  const PositiveInt(this.value) : assert(value >= 0);
  final int value;
}

void main() {
  final invalidAge = PositiveInt(-1);
  print(invalidAge.value);
}
