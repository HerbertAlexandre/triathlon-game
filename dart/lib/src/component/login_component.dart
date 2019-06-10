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

  Future<NavigationResult> gotoDetail() =>
      _router.navigate(RoutePaths.hero.toUrl());
}
