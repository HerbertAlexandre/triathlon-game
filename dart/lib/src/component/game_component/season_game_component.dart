import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import '../../route_paths.dart';

@Component(
  selector: 'season_game',
  templateUrl: 'season_game_component.html',
  styleUrls: ['season_game_component.css'],
  directives: [coreDirectives],
  pipes: [commonPipes],
)
class SeasonGameComponent {

  final Router _router;

  SeasonGameComponent(this._router);

  Future<NavigationResult> gotoDetail() =>
      _router.navigate(RoutePaths.hero.toUrl());
}