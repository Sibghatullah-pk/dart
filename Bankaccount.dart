import 'dart:io';

class BankAccount {
  String accountHolder;
  double _balance; 

  BankAccount(this.accountHolder, this._balance);

  double get balance => _balance;

  set deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: \$${amount.toStringAsFixed(2)}");
    } else {
      print("Invalid deposit amount!");
    }
  }

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print("Withdrawn: \$${amount.toStringAsFixed(2)}");
    } else {
      print("Insufficient balance!");
    }
  }

 
  void checkBalance() {
    print("Account Holder: $accountHolder");
    print("Balance: \$${_balance.toStringAsFixed(2)}");
  }
}

class SavingsAccount extends BankAccount {
  double interestRate;

  SavingsAccount(String accountHolder, double balance, this.interestRate)
      : super(accountHolder, balance);

  void addInterest() {
    double interest = balance * (interestRate / 100);
    deposit = interest; // using setter
    print("Interest of \$${interest.toStringAsFixed(2)} added.");
  }
}

void main() {

  SavingsAccount account = SavingsAccount("Ali", 1000, 5);

  while (true) {
    print("\n===== Bank Menu =====");
    print("1. Deposit");
    print("2. Withdraw");
    print("3. Check Balance");
    print("4. Add Interest");
    print("5. Exit");

    stdout.write("Enter choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.write("Enter amount to deposit: ");
        double dep = double.parse(stdin.readLineSync()!);
        account.deposit = dep;
        break;
      case 2:
        stdout.write("Enter amount to withdraw: ");
        double wd = double.parse(stdin.readLineSync()!);
        account.withdraw(wd);
        break;
      case 3:
        account.checkBalance();
        break;
      case 4:
        account.addInterest();
        break;
      case 5:
        print("Thank you for banking with us!");
        return;
      default:
        print("Invalid choice, try again!");
    }
  }
}
