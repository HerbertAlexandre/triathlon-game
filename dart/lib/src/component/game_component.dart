import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_tour_of_heroes/src/component/game_component/athletes_game_component.dart';
import 'package:angular_tour_of_heroes/src/component/game_component/general_game_component.dart';
import 'package:angular_tour_of_heroes/src/component/game_component/ranking_game_component.dart';
import 'package:angular_tour_of_heroes/src/component/game_component/results_game_component.dart';
import 'package:angular_tour_of_heroes/src/component/game_component/season_game_component.dart';

import '../route_paths.dart';

@Component(
  selector: 'game',
  templateUrl: 'game_component.html',
  styleUrls: ['game_component.css'],
  directives: [coreDirectives, AthletesGameComponent, GeneralGameComponent, RankingGameComponent, ResultsGameComponent, SeasonGameComponent],
  pipes: [commonPipes],
)
class GameComponent {

  final Router _router;

  GameComponent(this._router);

  Future<NavigationResult> gotoDetail() =>
      _router.navigate(RoutePaths.hero.toUrl());
}