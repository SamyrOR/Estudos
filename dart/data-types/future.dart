Future<int> addNumbers(int a, int b) {
  return Future.value(a + b);
}

void main() {
  addNumbers(2, 3).then((result) {
    print('The result is $result');
  });
}
