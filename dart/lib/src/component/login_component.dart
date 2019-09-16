import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_tour_of_heroes/src/api/login_api.dart';
import 'package:angular_tour_of_heroes/src/model/user.dart';
import 'package:angular_tour_of_heroes/src/service/login_service.dart';

import '../route_paths.dart';

@Component(
  selector: 'login',
  templateUrl: 'login_component.html',
  styleUrls: ['login_component.css'],
  directives: [coreDirectives, formDirectives],
  pipes: [commonPipes],
)
class LoginComponent {

  Router _router;
  LoginService _loginService;

  String email;
  String password;

  LoginComponent(this._router, this._loginService);

  Future<NavigationResult> login() async => await _loginService.login(email, password)
      .then((_) => _loginService.user != null ? _router.navigate(RoutePaths.welcome.toUrl()): null);

  Future<NavigationResult> goToRegistrationPage() =>
      _router.navigate(RoutePaths.registration.toUrl());
}
