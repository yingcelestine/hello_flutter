class Account {
  static int _counter = 0;
  int _id;
  String _name;
  int _balance;
  Account(this._name, this._balance) {
    this._id = Account._counter;
    Account._counter++;
  }
  get name {
    return _name;
  }

  get balance {
    return _balance;
  }

  int credit(int amount) {
    if (amount > 0) {
      _balance += amount;
      return _balance;
    }
    return _balance;
  }

  int debit(int amount) {
    if (amount > 0 && amount <= balance) {
      _balance -= amount;
      return _balance;
    }
    print("Amount exceeded balance.");
    return _balance;
  }

  int transferTo(int amount, Account another) {
    debit(amount);
    another.credit(amount);
    return _balance;
  }

  String toString() {
    return """
    ID: $_id
    Name: $_name
    Balance: $_balance
    """;
  }
}

main(List<String> args) {
  var account1 = Account("Lily", 500);
  account1.credit(2000);
  account1.debit(1000);
  print(account1);
  var account2 = Account("Ying", 0);
  account1.transferTo(1500, account2);
  print(account1);
  print(account2);
}
