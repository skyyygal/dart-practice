// Problem Complex number: a+bi, where a and b are real numbers and i represents imaginary unit, satisfying the equation i2 =-1.
// for complex number a_bi, a is called real part and b is called imaginary part.

class Complex {
  final double re;
  final double im;

  const Complex(this.re, this.im);
  // declaring const here
  /*
  Best Practice 
  1. Have a class where all variables are final?
  2. Use a const constructor. (enable performance optimization)
  */
}

void main() {
  const complex = Complex(1, 2);
  const x = 10;
  const list = [Complex(1, 3), Complex(3, 4)];
}
