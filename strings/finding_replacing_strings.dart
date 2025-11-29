//finding and replacing the strings.

void main() {
  int time = 4;
  String type = time > 7 ? 'order' : 'cook';
  print(type);
  String email = 'test@example.com';
  print(email.isNotEmpty && email.contains('@'));
}
