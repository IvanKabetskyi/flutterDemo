import 'dart:io';

import 'package:http/http.dart' as http;

class Api {
  dynamic getTocket(String company, String email, String password) async {
    http.Response response = await http.post(
        'https://tms-dev.rhinocodes.com/api/public/oauth/v2/token',
        body: {
          'company': company,
          'username': email,
          'password': password,
          'client_id': '1_3bcbxd9e24g0gk4swg0kwgcwg4o8k8g4g888kwc44gcc0gwwk4',
          'client_secret': '4ok2x70rlfokc8g0wws8c8kwcokw80k44sg48goc0ok4w0so0k',
          'grant_type': 'password',
        });
    return response;
  }

  dynamic getCurrentCarrier(String accessToken) async {
    String url = 'https://tms-dev.rhinocodes.com/api/carriers/current';

    http.Response response = await http.get(url,
        headers: {HttpHeaders.authorizationHeader: 'Bearer $accessToken'});
    return response;
  }

  /// me request url: https://tms-dev.rhinocodes.com/api/drivers/me
}
