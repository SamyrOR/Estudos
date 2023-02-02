import 'dart:convert';

void main() {
  //DateTime retorna yyyy-MM-dd HH:mm:ss
  var date = DateTime(2023, 2, 01);
  print(date);

  final parseDate = DateTime.parse('2023-02-01 23:17');
  print(parseDate);

  final dateUTC = DateTime.utc(2023, 02, 01);
  print(dateUTC);

  final dateNow = DateTime.now();
  print(dateNow);

  print("HORAS ${dateNow.hour}:${dateNow.minute} : ${dateNow.weekday}");
  final later = dateNow.add(const Duration(days: 55));
  print(later);

  final dateA = DateTime.now();
  final dateB = dateA.subtract(const Duration(hours: 54));
  print("É depois: ${dateA.isAfter(dateB)}");
  print("É antes: ${dateA.isBefore(dateB)}");
  print("É igual: ${dateA.isAtSameMomentAs(dateB)}");

  final dateC = DateTime.now();
  print(dateC);
  final dateD = dateC.add(const Duration(hours: 36));
  print(dateD);
  final difference = dateC.difference(dateD);
  print(difference.inHours);
}
