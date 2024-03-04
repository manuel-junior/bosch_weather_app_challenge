import 'enums/http_method_enums.dart';

abstract class IHttpClient {
  IHttpClient();

  Future<Map?> request(String url, HttpMethodEnums method);
}
