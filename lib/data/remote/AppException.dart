class AppException implements Exception {
  final _message;
  final _prefix;

  AppException([this._message, this._prefix]);

  String toString() {
    return "$_prefix$_message";
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, "Erro na comunicação com o Servidor: ");
}

class BadRequestException extends AppException {
  BadRequestException([message]) : super(message, "Invalid Request: ");
}

class UnauthorizedExcepiton extends AppException {
  UnauthorizedExcepiton([message])
      : super(message, "Requisição não tem autorização: ");
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super(message, "Invlid Input: ");
}
