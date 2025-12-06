// Private methods and variables are essential in object oriented programming.
// Encapsulate things that should not be accessible outside a class.

class BankAccount {
  BankAccount(double balance) {
    this.balance = balance;
    // we should not allow to set/ modify the balance outside the class
    // bankAccount.balance = 100000; -> this lets print some mouney out of thin air.
    //  therfore, we must make balance a private variable. _ (using underscore)
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
// check the other two bank_account and logic. 