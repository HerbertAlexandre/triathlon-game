import 'package:angular_router/angular_router.dart';

const idParam = 'id';

class RoutePaths {
  static final dashboard = RoutePath(path: 'dashboard');
  static final heroes = RoutePath(path: 'heroes');
  static final hero = RoutePath(path: '${heroes.path}/:$idParam');

  static final login = RoutePath(path: 'login');
  static final myprofile = RoutePath(path: 'profile');
  static final welcome = RoutePath(path: 'home');
  static final registration = RoutePath(path: 'registration');
  static final race = RoutePath(path: 'race');
  static final newgame = RoutePath(path: 'new');
  static final game = RoutePath(path: 'game');
  static final classification = RoutePath(path: 'results');
}

int getId(Map<String, String> parameters) {
  final id = parameters[idParam];
  return id == null ? null : int.tryParse(id);
}
