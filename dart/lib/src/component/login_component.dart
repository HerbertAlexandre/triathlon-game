import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import '../route_paths.dart';

@Component(
  selector: 'login',
  templateUrl: 'login_component.html',
  styleUrls: ['login_component.css'],
  directives: [coreDirectives],
  pipes: [commonPipes],
)
class LoginComponent {

  final Router _router;

  LoginComponent(this._router);

  Future<NavigationResult> login() =>
      _router.navigate(RoutePaths.welcome.toUrl());

  Future<NavigationResult> goToRegistrationPage() =>
      _router.navigate(RoutePaths.registration.toUrl());
}
