//finding and replacing the strings.

// void main() {
/*   const text = 'I like pizza';
  const toppings = 'with tomatoes';
  const favorite = '$text $toppings';
  final newText = favorite.replaceAll('pizza', 'pasta');
  const newFavorite = 'Now i like curry';
  print(newFavorite);
  print(newText); */
// enum Medal { gold, silver, bronze, try_again }
enum Operation { plus, minus, multiply, divide }

void main() {
  const a = 4;
  const b = 2;
  const op = Operation.plus;

  switch (op) {
    case Operation.plus:
      int c = a + b;
      print(c);
      break;
    case Operation.minus:
      int c = a - b;
      print(c);
      break;

    case Operation.multiply:
      int a = 6;
      int b = 2;
      int c = a * b;
      print(c);
    case Operation.divide:
      int a = 6;
      int b = 2;
      double c = a / b;
      print(c);
      break;
  }
}


/*   const medal = Medal.gold;
  print(medal);
  print(medal.name);
  print(Medal.values);
  print(Medal.values.byName('silver'));
  switch (medal) {
    case Medal.gold:
      print("First place");
      break;
    case Medal.silver:
      print("Second Place");
      break;
    case Medal.bronze:
      print("Third Place");
      break;
    case Medal.try_again:
      print("Try again in sometime");
  } */

