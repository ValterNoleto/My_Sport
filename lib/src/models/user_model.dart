class UserModel {
  String name;
  String email;
  String phone;
  String cpf;
  String password;
  String address;

  UserModel({
    required this.phone,
    required this.name,
    required this.address,
    required this.cpf,
    required this.email,
    required this.password,
  });
}
