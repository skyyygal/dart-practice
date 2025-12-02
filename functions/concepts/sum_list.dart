/*
## Exercise: Sum of a List of numbers

Write a function called 'sum' that takes 
a list of values as an argument ('List<double>'), and return 
the sum of all the values.

Then , call the fuction multiple times with different input values('[]', [1,2],[1,2,3,4])
and print the result.

 */

void main() {
  print(sum([1, 2]));
}

double sum(List<double?> list) {
  double sum = 0;
  for (var l in list) {
    sum += l!;
  }
  return sum;
}
