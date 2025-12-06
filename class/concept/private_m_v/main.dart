import 'bank_account.dart';

void main() {
  final bankAccount = BankAccount(100);
  print(bankAccount);
  bankAccount.deposit(100);
  // to access bank account use get
  print(bankAccount.balance);
}
