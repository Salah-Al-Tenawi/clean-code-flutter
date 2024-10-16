// ignore_for_file: public_member_api_docs, sort_constructors_first
 class ErrorModel {
  final String message;
  final int ?statusCode;
  const ErrorModel({
    required this.message,
     this.statusCode,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(message: json['message'], statusCode: json['status code']);
  }
}

