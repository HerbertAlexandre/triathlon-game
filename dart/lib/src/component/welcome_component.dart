import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import '../route_paths.dart';

@Component(
  selector: 'welcome',
  templateUrl: 'welcome_component.html',
  styleUrls: ['welcome_component.css'],
  directives: [coreDirectives],
  pipes: [commonPipes],
)
class WelcomeComponent {

  final Router _router;

  WelcomeComponent(this._router);

  Future<NavigationResult> createNewGame() =>
      _router.navigate(RoutePaths.newgame.toUrl());

  Future<NavigationResult> openGame() =>
      _router.navigate(RoutePaths.game.toUrl());
}
