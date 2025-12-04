void main() {
  final bankAccount = BankAccount();
  // create an instance of the class to utilize it
  bankAccount.balance = 100;
  print(bankAccount.balance);
  final bankAccount2 = BankAccount();
  bankAccount2.balance = 50;
  print(bankAccount2.balance);
}

class BankAccount {
  int balance = 0;
  //balance is the property of BankAccount class
}

// you can create many instance of the same class

//next: instance_method.dart
