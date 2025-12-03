/// Code reuse with anonymous fn and generics.

// Goal: Write a function to double all the items inside a list using a for loop.
void main() {
  const list = [1, 2, 3];

  list.forEach(print);
  // final doubles = list.map((value) => value * 2);
  // print(doubles);

  final doubles = doubleItems(list);
  print(doubles);
  //1. this code works but: it can only double the values, and only works with integers.
  //2. can we make it more generic?

  final doubles2 = transform(list, (n) => n * 2);
  final squares = transform(list, (n) => n * n);

  print(doubles2);
  print(squares);
  const list2 = [1.0, 2.0, 3.0];
  final doubles3 = transform2<int>(list, (n) => n * 2);
  //add type annotation here to be more specific.
  final squares2 = transform2<double>(list2, (n) => n * n);

  print(doubles3);
  print(squares2);
  //for 3, there's still a problem.
  // If you want a round of number from doubles.
  //check round.dart for it.
}

//3. From 2, it throws errors if the type is doublw.
//How can we make it more generic.
//Soln: specify more generic type, use <T> instead of int
//make sure to update all types when converting a fn to use generics.
List<T> transform2<T>(List<T> items, T Function(T) f) {
  var result = <T>[];
  for (var n in items) {
    result.add(f(n));
    // note: f(n): Very powerful: delegate the transformation of the items to a fn argument.
  }
  return result;
}

//2
// Take away: Function arguments make our code more reusable.
List<int> transform(List<int> items, int Function(int) f) {
  var result = <int>[];
  for (var n in items) {
    result.add(f(n));
    // note: f(n): Very powerful: delegate the transformation of the items to a fn argument.
  }
  return result;
}

//1
List<int> doubleItems(List<int> items) {
  var result = <int>[];
  for (var n in items) {
    result.add(n * 2);
  }
  return result;
}
