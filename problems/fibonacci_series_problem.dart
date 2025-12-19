void main() {
  int n = 5;
  final fibonacciSeries = fibonacci(n);
  print(fibonacciSeries);
}

List<int> fibonacci(int n) {
  int a = 1;
  // you need 2 values to calculate any n Fibonacci variable. a=1 and b=1
  int b = 1;
  List<int> fib = [];
  for (int i = 0; i < n; i++) {
    fib.add(a);
    int next = a + b;
    a = b;
    b = next;
  }
  return fib;
}

// void main() {
//   int n = 10;
//   List<int> fibonacciSeries = generateFibonacci(n);
//   print(fibonacciSeries);
// }

// List<int> generateFibonacci(int n) {
//   List<int> series = [];
//   int a = 0, b = 1;
//   for (int i = 0; i < n; i++) {
//     series.add(a);
//     int next = a + b;
//     a = b;
//     b = next;
//   }
//   return series;
// }
