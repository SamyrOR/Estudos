void main() {
  streamFunction().listen((letter) {
    print("LETTER: $letter");
  });
}

Stream<String> streamFunction() async* {
  final word = "TESTE";
  final wordSplited = word.split("");
  for (var letter in wordSplited) {
    yield letter;
  }
}
