class Person {
  String name;
  String cpf;
  String rg;

  Person({required this.name, required this.cpf, required this.rg});
}

void main() {
  final person = Person(name: "Samyr", cpf: "123.456.789-11", rg: "123456");
  print(person.cpf);
  print(person.name);
}
