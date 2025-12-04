class BankAccount {
  BankAccount({required this.accountHolder, this.balance = 0});
  final String accountHolder;
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
  //   bankAccount.accountHolder = "Alice";
  //   this should be mutable.
  print(bankAccount);
}
//next 
//you must check whether the variables in class should be mutable or immutable. 
// for instance: here the bank holder name should be the same throughout, and balance may vary,
// inorder to make bank account holder name immutable use final keyword. 
//   eg:  String accountHolder; =>   final String accountHolder;

