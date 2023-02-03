void main() {
  var name = "Samyr";
  String lastName;
  lastName = " Ribeiro";
  //Concatenação de Strings
  var fullName = name + lastName;
  print(fullName);
  //Substring
  var substringLastName = fullName.substring(6, 13);
  print(substringLastName);
  //Split
  var listName = fullName.split(" ");
  print(listName);
  //Length
  var nameLength = name.length;
  print(nameLength);
  //Interpolation
  print("Hello $name, welcome!");
  //isEmpty
  var text = "";
  print(text.isEmpty);
  //isNotEmpty
  print(text.isNotEmpty);
  //Contains
  final sentence = "My grandma, bought a cake";
  print(sentence.contains("cake"));
  //replaceAll
  final ourString = "This is my text, but isn't my algorithm";
  print(ourString.replaceAll("my", "our"));
  //replaceFirst
  print(ourString.replaceFirst("my", "our"));
  //replaceRange
  print(ourString.replaceRange(0, 4, "Those"));
  //startsWith
  print(ourString.startsWith("This"));
  //endsWith
  print(ourString.endsWith("algorithm"));
  //trim
  final textWithSpace = "  User input -  ";
  print(textWithSpace.trim());
  print(textWithSpace.trimLeft());
  print(textWithSpace.trimRight());
}
