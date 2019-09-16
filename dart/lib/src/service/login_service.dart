
import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_tour_of_heroes/src/api/login_api.dart';
import 'package:angular_tour_of_heroes/src/model/user.dart';

class LoginService {

  LoginApi _loginApi;
  User _user = null;

  LoginService(this._loginApi);

  Future<void> login(String email, String password) async{
    await _loginApi.login(email, password)
        .then((connectionUser) => connectionUser != null ? updateUser(connectionUser) : null);
  }

  User get user => _user;

  void updateUser(User user){
    _user = user;
  }
}
