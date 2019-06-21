import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import '../route_paths.dart';

@Component(
  selector: 'myprofile',
  templateUrl: 'myprofile_component.html',
  styleUrls: ['myprofile_component.css'],
  directives: [coreDirectives],
  pipes: [commonPipes],
)
class MyProfileComponent {

  final Router _router;

  MyProfileComponent(this._router);

  Future<NavigationResult> goBackToHome() =>
      _router.navigate(RoutePaths.welcome.toUrl());
}
