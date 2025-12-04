class BankAccount {
  BankAccount(double balance) {
    this.balance = balance;
    // balance = balance;
    // we have 2 balance we use "this" to disambiguate between the variables with same name
  }
  double balance = 0;
  void deposit(double amount) {
    balance += amount;
  }

  bool withdraw(double amount) {
    if (balance > amount) {
      balance -= amount;
      return true;
    } else {
      return false;
    }
  }
}

void main() {
  // final bankAccount = BankAccount(); //previously
  final bankAccount = BankAccount(100);
  print(bankAccount);
}

//next: initializer list
