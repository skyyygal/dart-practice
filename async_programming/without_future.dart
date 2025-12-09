String createOrderMessage() {
  var order = fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() =>
    // Imagine that this function is more complex and slow.
    Future.delayed(Duration(seconds: 2), () => "Pizza").then((order) => order);

void main() {
  print(createOrderMessage());
}

/*
String createOrderMessage(String order) {
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() =>
    Future.delayed(Duration(seconds: 2), () => "Pizza");

void main() {
  fetchUserOrder().then((order) {
    print(createOrderMessage(order));
  });
}

*/
