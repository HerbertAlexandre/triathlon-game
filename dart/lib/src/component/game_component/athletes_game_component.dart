import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import '../../route_paths.dart';

@Component(
  selector: 'athletes_game',
  templateUrl: 'athletes_game_component.html',
  styleUrls: ['athletes_game_component.css'],
  directives: [coreDirectives],
  pipes: [commonPipes],
)
class AthletesGameComponent {

  final Router _router;

  AthletesGameComponent(this._router);

  Future<NavigationResult> gotoDetail() =>
      _router.navigate(RoutePaths.hero.toUrl());
}