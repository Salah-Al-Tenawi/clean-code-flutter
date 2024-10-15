// ignore_for_file: public_member_api_docs, sort_constructors_first
class Filuar {
  final String message;
  final int statusCode;
  const Filuar({
    required this.message,
    required this.statusCode,
  });

  factory Filuar.fromJson(Map<String, dynamic> json) {
    return Filuar(message: json['message'], statusCode: json['status code']);
  }
}
