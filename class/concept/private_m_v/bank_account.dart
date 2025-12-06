class BankAccount {
  BankAccount(double balance) {
    this._balance = balance;
  }
  double _balance = 0;
  void deposit(double amount) {
    _balance += amount;
  }

  double get balance => _balance;
  // lets you access the bank balance outside the class.
  bool withdraw(double amount) {
    if (_balance > amount) {
      _balance -= amount;
      return true;
    } else {
      return false;
    }
  }
}
