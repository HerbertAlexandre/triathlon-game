
import 'dart:async';
import 'dart:convert';
import 'dart:html';

import 'package:http/browser_client.dart';
import 'package:http/http.dart';

import 'package:angular_tour_of_heroes/src/api/api.dart';
import 'package:angular_tour_of_heroes/src/model/user.dart';

class LoginApi extends Api{

  static const _loginUrl = Api.prefix + 'api/login'; // URL to web API

  BrowserClient _http;

  LoginApi(this._http);

  Future<User> login(String email, String password) async {
    try {
      final response = await _http.post(_loginUrl+"/",
          headers: headers, body: json.encode({"email": email, "password": password}));
      dynamic data = extractData(response);
      User returnedUser = User.fromJson(data);
      print(returnedUser.toJson());
      return returnedUser;
    } catch (e) {
      throw handleError(e);
    }
  }
}