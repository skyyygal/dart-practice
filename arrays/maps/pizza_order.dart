//write a program to calculate the total order.
/*for eg. given the following order:

```dart 
const order = ['margharita','pepperoni'];
```

the program should print `Total: $13`.

Note: if a pizza is not in the menu, the program 
should print something  like this:

> pineapple pizza is not on the menu

*/

void main() {
  const pizzaPrices = {'margharita': 5.5, 'pepperoni': 7.5, 'vegitable': 6.5};

  // const order = ['margharita', 'pepperoni'];
  const order = ['margharita', 'pepperoni', 'pineapple'];
  var total = 0.0;
  for (var item in order) {
    final price = pizzaPrices[item];
    print("item:$price");
    if (price != null) {
      total += price;
    } else {
      print("$item Pizza is not in the menu");
    }
  }
  print(total);
}
