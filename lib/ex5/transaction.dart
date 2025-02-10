import 'dart:io';

import 'account.dart';

abstract class Transaction {
  final int? id;
  final Account account;

  Transaction({required this.id, required this.account});
  void exrcused();
}

class BalanceQuiry extends Transaction {
  BalanceQuiry(
      {required this.currenttype, required super.id, required super.account});

  final String currenttype;

  void exrcused() {
    print("Your balance--> ${account.balance}");
  }
}

class withdraw extends Transaction implements Rollback {
  withdraw({required this.amount, required super.id, required super.account});
  final double amount;
  void exrcused() {
    account.balance -= amount;
    print("Your balance--> ${account.balance}");
  }

  @override
  cancetranscation(Account account) {
    account.balance += amount;
    print("Your balance--> ${account.balance}");
  }
}

class deposit extends Transaction implements Rollback {
  final double amount;

  deposit({required this.amount, required super.id, required super.account});
  void exrcused() {
    account.balance += amount;
    print("Your balance--> ${account.balance}");
  }

  @override
  cancetranscation(Account account) {
    account.balance -= amount;
    print("Your balance--> ${account.balance}");
  }
}

abstract class Rollback {
  void cancetranscation(Account account);
}

void main() {
  int ids = 0;
  int number = 0;
  Transaction? last;
  for (var i = 0; number != 1; i++) {
    if (i != 0) {
      print('''Enter 1 for continue
- Press 1 to enter account details
- Press 2 to deposit
- Press 3 to withdraw
- Press 4 to show current balance
- Press 5 to cancel last transaction
- Press 6 to exit
''');
    } else {
      print('''- Press 1 to enter account details
- Press 2 to deposit
- Press 3 to withdraw
- Press 4 to show current balance
- Press 5 to cancel last transaction
- Press 6 to exit
''');
    }
    number = int.tryParse(stdin.readLineSync()!)!;
  }

  print("Enter your account number and your name and balance  ");
  Account account1 = Account(
      accountnumber: int.tryParse(stdin.readLineSync()!)!,
      name: stdin.readLineSync()!,
      balance: double.tryParse(stdin.readLineSync()!)!);

  String? torepeat;
  do {
    withdraw? withd;
    print('''- Press 1 to deposit
- Press 2 to withdraw
- Press 3 to show current balance
- Press 4 to cancel last transaction
- Press 5 to exit
''');
    number = int.tryParse(stdin.readLineSync()!)!;
    if (number == 1) {
      deposit dep = deposit(
          amount: double.tryParse(stdin.readLineSync()!)!,
          id: ids,
          account: account1);
      dep.exrcused();
    } else if (number == 2) {
      withd = withdraw(
          amount: double.tryParse(stdin.readLineSync()!)!,
          id: ids,
          account: account1);
      withd.exrcused();
      last = withd;
    } else if (number == 3) {
      BalanceQuiry balanc = BalanceQuiry(
          currenttype: stdin.readLineSync()!, id: ids, account: account1);
      balanc.exrcused();
      last = balanc;
    } else if (number == 4) {
      if (last is Rollback) {
        (last as Rollback).cancetranscation(account1);
      }
    } else {
      print("exit");
      return;
    }
    print("Your want repeat this Enter yes ,to end  no ");
    torepeat = stdin.readLineSync()!;
    // if (torepeat != "yes") return;
    ids++;
  } while (torepeat == "yes");
}
