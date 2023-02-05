void main() {
  // final map = Map<String, dynamic>();
  // map.addAll({
  //   "name": "Samyr",
  //   "cpf": 12345678911,
  //   "phone": "12 12345 1234",
  // });
  Map data = {
    "name": "Samyr",
    "cpf": 12345678911,
    "phone": "12 12345 1234",
  };
  Map<String, dynamic> newData = {
    "residence": {"country": "Brazil", "state": "São Paulo"}
  };
  //addEntries
  data.addEntries(newData.entries);
  //clear
  newData.clear();
  print(data);
  //containsKey
  print(data.containsKey("name"));
  //containsValue
  print(data.containsValue(12345678911));
  //remove
  data["residence"].remove("state");
  //removeWhere
  data.removeWhere((key, value) => key == "residence");
  print(data);
  //update
  data.update("name", (value) => "Samyr Ribeiro");
  print(data);
  //updateAll
  data.updateAll((key, value) => key == "phone" ? key = "phoneNumber" : value);
  print(data);
}
