
class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);
  @override
  String toString() {
    return '$_prefix$_message';
  }
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message])
      : super(message, 'Error while communication');
}

class UnauthorizedException extends AppExceptions {
  UnauthorizedException([String? message])
      : super(message, 'Unauthorized User');
}

class BadRequestException extends AppExceptions {
  BadRequestException([String? message]) : super(message, 'Bad request');
}

class InvalidInputException extends AppExceptions {
  InvalidInputException([String? message]) : super(message, 'Invalid input');
}

class NullDataException extends AppExceptions {
  NullDataException([String? message]) : super(message, 'No data found');
}
