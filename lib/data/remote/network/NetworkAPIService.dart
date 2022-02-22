import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:mvvm_poc/data/remote/AppException.dart';
import 'BaseAPIService.dart';

class NetworkAPIService extends BaseAPIService {
  @override
  Future getResponse(String url) async {
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(baseURL + url));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('Sem conexão com a internet...');
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.toString());
      case 401:
      case 403:
        throw UnauthorizedExcepiton(response.body.toString());
      case 404:
        throw UnauthorizedExcepiton(response.body.toString());
      case 500:
        throw FetchDataException(
            'Ocorreu um erro na comunicação com o servidor' +
                ' com o statusCode: ${response.statusCode}');
    }
  }
}
