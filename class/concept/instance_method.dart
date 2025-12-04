class BankAccount {
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
  final bankAccount = BankAccount();
  bankAccount.deposit(100);
  bankAccount.deposit(50);
  final success1 = bankAccount.withdraw(100);
  print("Success:$success1, balance: ${bankAccount.balance}");
  final success2 = bankAccount.withdraw(100);
  print("Success:$success2, balance: ${bankAccount.balance}");

  print(bankAccount.balance);
}
// Real bank account - Withdraw money and deposit money - We can use instance method to display these attributes.
/*
eg: instance method -
 void deposit(double amount) {
    balance += amount;
  }
  eg:2 
    bool withdraw(double amount) {
    if (balance > amount) {
      balance -= amount;
      return true;
    } else {
      return false;
    }
  }
*/