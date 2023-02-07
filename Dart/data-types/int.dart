void main() {
  var number = 5;
  number += 5;
  print(number);

  var text = "A1";
  // var parsedNumber = int.parse(text);
  var parsedNumber = int.tryParse(text) ?? 0;
  print(number + parsedNumber);

  // var text = "1";
  // var parsedNumber = int.parse(text);
  // O simbolo "~" antes de uma divisão
  //garante que o retorno seja sempre um numero inteiro
  //e não um double
  // print(number ~/ parsedNumber);
}
