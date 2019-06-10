import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';
import 'dashboard_component.template.dart' as dashboard_template;
import 'hero_component.template.dart' as hero_template;
import 'hero_list_component.template.dart' as hero_list_template;

import 'component/login_component.template.dart' as login_template;
import 'component/welcome_component.template.dart' as welcome_template;
import 'component/registration_component.template.dart' as registration_template;
import 'component/race_component.template.dart' as race_template;
import 'component/newgame_component.template.dart' as newgame_template;
import 'component/myprofile_component.template.dart' as myprofile_template;
import 'component/game_component.template.dart' as game_template;
import 'component/classification_component.template.dart' as classification_template;

export 'route_paths.dart';

class Routes {
  static final dashboard = RouteDefinition(
    routePath: RoutePaths.dashboard,
    component: dashboard_template.DashboardComponentNgFactory,
  );

  static final hero = RouteDefinition(
    routePath: RoutePaths.hero,
    component: hero_template.HeroComponentNgFactory,
  );

  static final heroes = RouteDefinition(
    routePath: RoutePaths.heroes,
    component: hero_list_template.HeroListComponentNgFactory,
  );

  static final login = RouteDefinition(
    routePath: RoutePaths.login,
    component: login_template.LoginComponentNgFactory,
  );

  static final welcome = RouteDefinition(
    routePath: RoutePaths.welcome,
    component: welcome_template.WelcomeComponentNgFactory,
  );

  static final registration = RouteDefinition(
    routePath: RoutePaths.registration,
    component: registration_template.RegistrationComponentNgFactory,
  );

  static final race = RouteDefinition(
    routePath: RoutePaths.race,
    component: race_template.RaceComponentNgFactory,
  );

  static final newgame = RouteDefinition(
    routePath: RoutePaths.newgame,
    component: newgame_template.NewGameComponentNgFactory,
  );

  static final myprofile = RouteDefinition(
    routePath: RoutePaths.myprofile,
    component: myprofile_template.MyProfileComponentNgFactory,
  );

  static final game = RouteDefinition(
    routePath: RoutePaths.game,
    component: game_template.GameComponentNgFactory,
  );

  static final classification = RouteDefinition(
    routePath: RoutePaths.classification,
    component: classification_template.ClassificationComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    dashboard,
    hero,
    heroes,
    login,
    welcome,
    registration,
    race,
    newgame,
    myprofile,
    game,
    classification,
    RouteDefinition.redirect(
      path: '',
      //redirectTo: RoutePaths.dashboard.toUrl(),
      redirectTo: RoutePaths.login.toUrl(),
    ),
  ];
}
