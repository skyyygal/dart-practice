Future<String> fetchUserOrder() => Future.delayed(
  Duration(seconds: 2),
  () => "Cappuccino",
  // throw Exception('Out of milk'),
);
Future<String> fetchUserOrder2() => Future.value('Espresso');
Future<String> fetchUserOrder3() => Future.error(UnimplementedError);

Future<void> main() async {
  print('Program started');
  try {
    final order = await fetchUserOrder();
    print(order);
    final order2 = await fetchUserOrder3();
    print(order2);
  } catch (e) {
    print(e);
  } finally {
    print('Done');
  }
}
