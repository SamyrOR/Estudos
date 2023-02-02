void main() {
  final duration = Duration(days: 100);
  print(duration);

  const firstHalf = Duration(minutes: 45);
  const secondHalf = Duration(minutes: 45);
  const overTime = Duration(minutes: 30);
  final maxGameTime = firstHalf + secondHalf + overTime;
  print(maxGameTime.inMinutes);

  var result = firstHalf.compareTo(secondHalf);
  // Resultado igual a 0, significa que são iguais
  print(result);

  result = overTime.compareTo(firstHalf);
  print(result);
  // Resultado < 0, significa overTime é menor que firsHalf

  result = secondHalf.compareTo(overTime);
  // Resultado > 0, significa que o secondHalf é maior que o overTime
  print(result);
}
