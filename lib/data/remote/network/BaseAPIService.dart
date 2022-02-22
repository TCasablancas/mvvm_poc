abstract class BaseAPIService {
  final String baseURL =
      "htpps://dea91516-1da3-444b-ad94-c6d0c4dfab81.mock.pstmn.io/";

  Future<dynamic> getResponse(String ulr);
}
