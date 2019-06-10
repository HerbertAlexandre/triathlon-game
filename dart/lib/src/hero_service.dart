import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';

import 'hero.dart';

class HeroService {
  static final _headers = {'Content-Type': 'application/json', 'Accept': 'application/json'};
  static const prefix = 'http://localhost:8081/';
  static const _heroesUrl = prefix + 'api/heroes'; // URL to web API

  final Client _http;

  HeroService(this._http);

  Future<List<Hero>> getAll() async {
    try {
      final response = await _http.get(_heroesUrl+"/getAll");
      final heroes = (extractData(response) as List)
          .map((json) => Hero.fromJson(json))
          .toList();
      heroes.forEach((Hero h) => print(h.name));
      return heroes;
    } catch (e) {
      throw _handleError(e);
    }
  }

  dynamic extractData(Response resp){
    print(json.decode(resp.body));
    return json.decode(resp.body);
  }

  Exception _handleError(dynamic e) {
    print(e); // for demo purposes only
    return Exception('Server error; cause: $e');
  }

  Future<Hero> get(int id) async {
    try {
      final response = await _http.get('$_heroesUrl/get/$id');
      return Hero.fromJson(extractData(response));
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<void> delete(int id) async {
    try {
      final url = '$_heroesUrl/delete/$id';
      await _http.get(url);
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Hero> create(String name) async {
    try {
      final response = await _http.post(_heroesUrl+"/create",
          headers: _headers, body: json.encode({'name': name}));
      return Hero.fromJson(extractData(response));
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Hero> update(Hero hero) async {
    try {
      final url = '$_heroesUrl/update/${hero.id}';
      final response =
          await _http.post(url, headers: _headers, body: json.encode(hero));
      return Hero.fromJson(extractData(response));
    } catch (e) {
      throw _handleError(e);
    }
  }
}
