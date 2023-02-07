enum UserType { admin, customer, employer, driver }

void main() {
  final userType = UserType.admin;
  final enhancedUserType = EnhancedUserType.admin;

  print("É uma pessoa ${enhancedUserType.value} com id ${enhancedUserType.id}");

  if (userType == UserType.admin) {
    print('É uma pessoa administradora');
  } else if (userType == UserType.customer) {
    print('É um cliente');
  } else if (userType == UserType.employer) {
    print("É uma pessoa funcionária");
  }

  switch (userType) {
    case UserType.admin:
      print("É uma pessoa administradora");
      break;
    case UserType.customer:
      print("É um cliente");
      break;
    case UserType.employer:
      print("É uma pessoa funcionária");
      break;
    case UserType.driver:
      print("É um motorista");
      break;
    default:
      print("Não é nada");
      break;
  }
}

enum EnhancedUserType {
  admin(1, "admin"),
  customer(1, "admin"),
  employee(1, "admin");

  final String value;
  final int id;
  const EnhancedUserType(this.id, this.value);
}
