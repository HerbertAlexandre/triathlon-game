import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import '../route_paths.dart';

@Component(
  selector: 'race',
  templateUrl: 'race_component.html',
  styleUrls: ['race_component.css'],
  directives: [coreDirectives],
  pipes: [commonPipes],
)
class RaceComponent {

  final Router _router;

  RaceComponent(this._router);

  Future<NavigationResult> goBackToHome() =>
      _router.navigate(RoutePaths.welcome.toUrl());

  Future<NavigationResult> goToResults() =>
      _router.navigate(RoutePaths.classification.toUrl());
}
