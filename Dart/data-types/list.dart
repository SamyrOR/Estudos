void main() {
  //Declarations
  List<int> typedList = [10, 15, 16, 20];
  var dyanicList = [];
  var varTypedList = <String>[];
  var newList = List.empty();
  //add
  var list = <String>[];
  list.add("Samyr");
  // list.add(0);
  print(list);
  //addAll
  var listA = <int>[1, 2, 3];
  var listB = <int>[4, 5, 6];
  listA.addAll(listB);
  print(listA);
  //remove
  listA.remove(2);
  print(listA);
  //removeAt
  listA.removeAt(3);
  print(listA);
  //removeLast
  print(listA.removeLast());
  //removeRange
  listA.removeRange(0, 1);
  print(listA);
  //removeWhere
  listA.removeWhere((element) => element <= 3);
  print(listA);
  //clear
  list.clear();
  print(list);
  //contains
  print(listB.contains(5));
  //firstWhere
  var users = <String>["User1", "User2", "User3", "User4", "User5", "User6"];
  var user = users.firstWhere((user) => user.endsWith("5"));
  print(user);
  //forEach
  users.forEach((element) {
    print(element);
  });
  //indexOf
  var indexUser2 = users.indexOf("User2");
  //indexWhere
  var indexUser4 = users.indexWhere((element) => element.endsWith("4"));
  //insert
  users.insert(4, "User4.5");
  //insertAll
  var newUsers = <String>["User1.1", "User1.2", "User1.3"];
  users.insertAll(1, newUsers);
  //Exercise
  final numbers = <int>[1, 25, 78, 64, 56, 45, 23, 41, 543, 24, 654];
  var sumNumbers = 0;
  numbers.forEach((number) {
    sumNumbers += number;
  });
  // var mean = sumNumbers / numbers.length;
  //fold
  double mean =
      numbers.fold(0, (previousValue, element) => previousValue + element) /
          numbers.length;
  print(mean);
  //fillRange
  numbers.fillRange(2, 3, 0);
  //followedBy
  var newNumbers = numbers.followedBy([4, 2, 6]);
}
