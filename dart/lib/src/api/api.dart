
import 'dart:convert';

import 'package:http/http.dart';

class Api {

  final headers = {'Content-Type': 'application/json', 'Accept': 'application/json'};
  static const prefix = 'http://localhost:8081/';

  dynamic extractData(Response resp) => json.decode(resp.body);

  Exception handleError(dynamic e) {
    print(e); // for demo purposes only
    return Exception('Server error; cause: $e');
  }
}