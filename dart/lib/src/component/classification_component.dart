import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import '../route_paths.dart';

@Component(
  selector: 'classification',
  templateUrl: 'classification_component.html',
  styleUrls: ['classification_component.css'],
  directives: [coreDirectives],
  pipes: [commonPipes],
)
class ClassificationComponent {

  final Router _router;

  ClassificationComponent(this._router);

  Future<NavigationResult> goBackToHome() =>
      _router.navigate(RoutePaths.welcome.toUrl());

  Future<NavigationResult> goToGamePage() =>
      _router.navigate(RoutePaths.game.toUrl());
}