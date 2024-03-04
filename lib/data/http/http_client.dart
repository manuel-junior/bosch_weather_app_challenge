import 'dart:convert';

import 'package:bosch_weather_app_challenge/domain/http/http.dart'
    show HttpMethodEnums, IHttpClient;
import 'package:http/http.dart';

class HttpClient implements IHttpClient {
  final _baseURL = "https://api.open-meteo.com/v1/";
  final Client _client;
  HttpClient() : _client = Client();

  Future<Response> _get(String url, [Map<String, String>? headers]) async {
    return await _client.get(Uri.parse('$_baseURL$url'), headers: headers);
  }

  @override
  Future<Map<String, dynamic>?> request(
      String url, HttpMethodEnums method) async {
    final headers = {
      "content-type": "application/json",
      "accept": "application/json",
    };
    try {
      if (method == HttpMethodEnums.get) {
        final response = await _get(url, headers);
        if (response.statusCode != 200) return null;
        return jsonDecode(response.body);
      }

      throw Exception("Unsupported method$method");
    } catch (e) {
      rethrow;
    }
  }
}
