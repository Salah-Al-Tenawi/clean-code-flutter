// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  final String name;
  final String email;
  final String token;
  final String? password;
  final String? numberPhone;
  const UserModel({
    required this.name,
    required this.email,
    required this.token,
    this.password,
    this.numberPhone,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(name: json[""], email: json[""], token: json[""]);
  }
}
