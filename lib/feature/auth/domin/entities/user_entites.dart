// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserEntites {
  final num id;
  final String name;
  final String? fistname;
  final String? lastname;
  final String email;
  final String? phone;
  final String token;

  UserEntites(
      {required this.id,
      required this.name,
      this.fistname,
      this.lastname,
      required this.email,
      this.phone,
      required this.token});
}
