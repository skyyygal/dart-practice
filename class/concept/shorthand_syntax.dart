class BankAccount {
  BankAccount({required this.accountHolder, this.balance = 0});
  String accountHolder;
  double balance;

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
  final bankAccount = BankAccount(accountHolder: "Anita", balance: 100);
  print(bankAccount);
}
// We'll use short hand most of the time in the code. initializer list in the inheritance. 
//next class with immutable members. 