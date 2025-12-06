class Complex {
  final double re;
  final double im;

  const Complex(this.re, this.im);
  const Complex.zero() : re = 0, im = 0;
  const Complex.identity() : re = 1, im = 0;
  const Complex.real(this.re) : im = 0;
  const Complex.imaginary(this.im) : re = 0;
  /*
 create a named constructors for special complex numbers.
  */
}

void main() {
  /*   // some special complex numbers:
  // 0 + i * 0
  final zero = Complex(0, 0);
  // 1 + i * 0
  final identity = Complex(1, 0);
  // a + i * 0
  final real = Complex(3, 0);
  // 0 + i * b
  final imaginary = Complex(0, 4); */

  final zero = Complex.zero();
  final identity = Complex.identity();

  final real = Complex.real(3);
  final imaginary = Complex.imaginary(4);
}
// next: named constructor eg. 