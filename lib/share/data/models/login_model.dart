class LoginModel {
  final String name;
  final String password;

  LoginModel({
    required this.name,
    required this.password,
  });

  @override
  String toString() {
    return '$runtimeType($name, $password)';
  }
}
