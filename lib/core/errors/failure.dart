import 'app_exception.dart';

class Failure {
  const Failure({
    required this.message,
    this.code,
  });

  final String message;
  final String? code;

  factory Failure.fromException(Object error) {
    if (error is AppException) {
      return Failure(
        message: error.message,
        code: error.code,
      );
    }

    return Failure(
      message: error.toString(),
    );
  }

  @override
  String toString() {
    if (code == null) {
      return message;
    }

    return '$code: $message';
  }
}
