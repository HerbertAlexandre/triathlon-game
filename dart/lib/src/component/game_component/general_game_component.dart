import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import '../../route_paths.dart';

@Component(
  selector: 'general_game',
  templateUrl: 'general_game_component.html',
  styleUrls: ['general_game_component.css'],
  directives: [coreDirectives],
  pipes: [commonPipes],
)
class GeneralGameComponent {

  final Router _router;

  GeneralGameComponent(this._router);
}