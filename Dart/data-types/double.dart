import 'dart:svg';

void main() {
  var a = 10.5;
  var b = 2.5;
  var soma = a + b;
  print(soma);

  var text = "10.55";
  var parsedDouble = double.parse(text);
  // var parsedDouble = double.tryParse(text) ?? 0.0;
  print(parsedDouble + a);
}
