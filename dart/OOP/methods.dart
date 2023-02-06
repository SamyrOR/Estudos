import 'dart:math';

class BankAccount {
  String id;
  String cpf;
  int value = 0;

  BankAccount({required this.id, required this.cpf}) {}

  void receive(int value) {
    this.value += value;
  }

  void pay(int value) {
    this.value -= value;
  }

  @override
  String toString() => "Bank info {id: $id, cpf: $cpf, value: $value}";
}

void main() {
  BankAccount newAccount = BankAccount(id: "12345", cpf: "123.456.789-11");
  print(newAccount.value);
  newAccount.receive(50);
  print(newAccount.value);
  newAccount.pay(15);
  print(newAccount.value);
  String? age;
  age = "23";
  age?.contains("2");
  print(newAccount);

  IMC imc = IMC(height: 1.62, weight: 58.0);

  print(imc.calculate());
}

class IMC {
  double height;
  double weight;

  IMC({required this.height, required this.weight}) {}

  double calculate() {
    return double.parse((weight / pow(height, 2)).toStringAsFixed(2));
  }
}
