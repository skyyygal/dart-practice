void main() {
  int n = 10;
  List<int> fibonacciSeries = generateFibonacci(n);
  print(fibonacciSeries);
}

List<int> generateFibonacci(int n) {
  List<int> series = [];
  int a = 0, b = 1;
  for (int i = 0; i < n; i++) {
    series.add(a);
    int next = a + b;
    a = b;
    b = next;
  }
  return series;
}
