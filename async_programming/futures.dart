Future<String> fetchUserOder() => Future.delayed(
  Duration(seconds: 2),
  () => "Cappuccino",
  // throw Exception('Out of milk'),
);
Future<void> main() async {
  print('Program started');
  // fetchUserOder()
  //     .then((order) => print("order is ready:$order"))
  //     .catchError((error) => print(error))
  //     .whenComplete(() => print("Done"));
  // print('done'); // prints early.
  try {
    final order = await fetchUserOder();
    print(order);
  } catch (e) {
    print(e);
  } finally {
    print('Done');
  }
}
