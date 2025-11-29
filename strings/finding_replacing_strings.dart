//finding and replacing the strings.

// void main() {
//   const text = 'I like pizza';
//   const toppings = 'with tomatoes';
//   const favorite = '$text $toppings';
//   final newText = favorite.replaceAll('pizza', 'pasta');
//   const newFavorite = 'Now i like curry';
//   print(newFavorite);
//   print(newText);

void main() {
  for (var i = 1; i <= 15; i++) {
    if (i % 3 == 0 && i % 5 == 5) {
      print("Fizz buzz");
    } else if (i % 3 == 0) {
      print("fizz");
    } else if (i % 5 == 0) {
      print('buzz');
    } else {
      print(i);
    }
  }
  print("done");
}
