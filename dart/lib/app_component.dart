import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_tour_of_heroes/src/api/api.dart';
import 'package:angular_tour_of_heroes/src/api/login_api.dart';
import 'package:angular_tour_of_heroes/src/component/login_component.dart';
import 'package:angular_tour_of_heroes/src/service/login_service.dart';
import 'package:http/browser_client.dart';

import 'src/routes.dart';
import 'src/hero_service.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [routerDirectives],
  exports: [RoutePaths, Routes],
)
class AppComponent {
}
