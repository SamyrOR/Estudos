void main() {
  try {
    divide(10, 0);
  } on DivisionByZeroException {
    print("Cannot divide by zero.");
  } catch (e) {
    print("An unexpected error occurred: $e");
  } finally {
    print("This finally block will always run.");
  }
}

int divide(int a, int b) {
  if (b == 0) {
    throw DivisionByZeroException();
  }
  return a ~/ b;
}

class DivisionByZeroException implements Exception {
  String toString() => "Division by zero exception";
}
