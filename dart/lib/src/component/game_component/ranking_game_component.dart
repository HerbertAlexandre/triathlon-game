import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import '../../route_paths.dart';

@Component(
  selector: 'ranking_game',
  templateUrl: 'ranking_game_component.html',
  styleUrls: ['ranking_game_component.css'],
  directives: [coreDirectives],
  pipes: [commonPipes],
)
class RankingGameComponent {

  final Router _router;

  RankingGameComponent(this._router);

  Future<NavigationResult> gotoDetail() =>
      _router.navigate(RoutePaths.hero.toUrl());
}