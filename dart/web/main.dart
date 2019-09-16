import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_tour_of_heroes/app_component.template.dart' as ng;
import 'package:angular_tour_of_heroes/src/api/login_api.dart';
import 'package:angular_tour_of_heroes/src/component/login_component.dart';
import 'package:angular_tour_of_heroes/src/hero_service.dart';
import 'package:angular_tour_of_heroes/src/service/login_service.dart';
import 'package:http/browser_client.dart';
import 'package:http/http.dart';

import 'main.template.dart' as self;

@GenerateInjector([
  routerProvidersHash, // You can use routerProviders in production
  ClassProvider(BrowserClient),
  ClassProvider(LoginComponent),
  ClassProvider(HeroService),
  ClassProvider(LoginService),
  ClassProvider(LoginApi)
])
final InjectorFactory injector = self.injector$Injector;

void main() {
  runApp(ng.AppComponentNgFactory, createInjector: injector);
}
