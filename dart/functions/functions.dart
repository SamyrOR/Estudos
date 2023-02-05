import 'dart:async';

void main() async {
  print("sum ${sum(1, 1)}");
  await asyncSum(1, 3);
  print("arrowSum ${arrowSum(1, 2)}");
  print(factorial(5));
  textField((value) => print("$value World"));
}

//Sync function
int sum(int a, int b) {
  return a + b;
}

//Arrow function
int arrowSum(int a, int b) => a + b;

Future<void> asyncSum(int a, int b) async {
  //Mock de uma chamada assíncrona
  await Future.delayed(Duration(seconds: 1), () => print(a + b));
}

//Recursive
int factorial(int number) {
  if (number == 1) {
    return number;
  }
  return number * factorial(number - 1);
}

//Callback
void textField(Function(String value) onChange) {
  onChange("Hello");
}
