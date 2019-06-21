import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import '../route_paths.dart';

@Component(
  selector: 'newgame',
  templateUrl: 'newgame_component.html',
  styleUrls: ['newgame_component.css'],
  directives: [coreDirectives],
  pipes: [commonPipes],
)
class NewGameComponent {

  final Router _router;

  NewGameComponent(this._router);

  Future<NavigationResult> createGame() =>
      _router.navigate(RoutePaths.game.toUrl());
}
