import 'package:http/http.dart' as http;
import 'dart:convert';

dynamic login(String company, String email, String password) async {
  print('start response');
  dynamic response = await getTocket(company, email, password);
  // String _accessTocken = response.body.access_token;
  dynamic decodeResponceData = json.decode(response.body);
  print('Response access_tocken: ${decodeResponceData['access_token']}');
  if (response.statusCode == 200) {
    return true;
  }
  return false;
}

// List<> apiToken (String company, String email, String password) async {
dynamic getTocket(String company, String email, String password) async {
  final response = await http
      .post('https://tms-dev.rhinocodes.com/api/public/oauth/v2/token', body: {
    'company': company,
    'username': email,
    'password': password,
    'client_id': '1_3bcbxd9e24g0gk4swg0kwgcwg4o8k8g4g888kwc44gcc0gwwk4',
    'client_secret': '4ok2x70rlfokc8g0wws8c8kwcokw80k44sg48goc0ok4w0so0k',
    'grant_type': 'password',
  });
  return response;
}
