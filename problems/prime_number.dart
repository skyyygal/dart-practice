void main() {
  int n = 29;
  bool isPrime = checkPrime(n);
  print('$n is ${isPrime ? 'a prime number' : 'not a prime number'}');
}

bool checkPrime(int num) {
  if (num <= 1) return false;
  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) return false;
  }
  return true;
}
