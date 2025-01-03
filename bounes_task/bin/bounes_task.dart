import 'package:bounes_task/bounes_task.dart' as bounes_task;

//generating bank account, account number and balance 
class BankAccount {

  String _accountNumber;
  double _balance;

  BankAccount(this._accountNumber, [this._balance = 0.0]);
  String get accountNumber => _accountNumber;
  double get balance => _balance;

  // validation for depositing money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited \$${amount.toStringAsFixed(2)} successfully.");
    } else {
      print("Deposit amount must be positive.");
    }
  }

  // validation for withdrowing money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Withdrawn \$${amount.toStringAsFixed(2)} successfully.");
    } else if (amount > _balance) {
      print("Insufficient balance.");
    } else {
      print("Withdrawal amount must be positive.");
    }
  }

  // displaying account details (Account number and balance)
  void displayAccountDetails() {
    print("Account Number: $_accountNumber");
    print("Balance: \$${_balance.toStringAsFixed(2)}");
  }
}

void main() {
  // Generating bank account number
  var account = BankAccount("123456789", 100.0);
  account.displayAccountDetails();

  // displaying account details 
  account.deposit(50.0);
  account.withdraw(30.0);
  account.withdraw(200.0);

  // generating bank balance after the bank transactions
  account.displayAccountDetails();
}


// made by eng- mahmoud mustafa