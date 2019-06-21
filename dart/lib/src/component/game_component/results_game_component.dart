import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import '../../route_paths.dart';

@Component(
  selector: 'results_game',
  templateUrl: 'results_game_component.html',
  styleUrls: ['results_game_component.css'],
  directives: [coreDirectives],
  pipes: [commonPipes],
)
class ResultsGameComponent {

  final Router _router;

  ResultsGameComponent(this._router);
}