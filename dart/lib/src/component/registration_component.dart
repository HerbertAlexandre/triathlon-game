import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import '../route_paths.dart';

@Component(
  selector: 'registration',
  templateUrl: 'registration_component.html',
  styleUrls: ['registration_component.css'],
  directives: [coreDirectives],
  pipes: [commonPipes],
)
class RegistrationComponent {

  final Router _router;

  RegistrationComponent(this._router);

  Future<NavigationResult> gotoDetail() =>
      _router.navigate(RoutePaths.hero.toUrl());
}
