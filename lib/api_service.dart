import 'dart:convert';
import 'package:http/http.dart' as http;

class Tournament {
  final String key;
  final String display;
  final String page;
  final String start;
  final String end;

  Tournament(
      {required this.key,
      required this.display,
      required this.page,
      required this.start,
      required this.end});

  factory Tournament.fromJson(Map<String, dynamic> json) {
    return Tournament(
      key: json['key'],
      display: json['display'],
      page: json['page'],
      start: json['start'],
      end: json['end'],
    );
  }
}

class TeamStats {
  final Map<String, dynamic> data;
  final String key;
  final int number;
  TeamStats({required this.data, required this.key, required this.number});

  factory TeamStats.fromJson(Map<String, dynamic> json) {
    return TeamStats(
      data: json,
      key: json['key'],
      number: int.parse(json['team_number']),
    );
  }

  
}

class ApiService {
  final String APIURL;
  final Duration cacheDuration;

  ApiService(this.APIURL, {this.cacheDuration = const Duration(minutes: 5)});

  Map<String, dynamic> _cache = {};

  dynamic _setInCache(String key, dynamic value) {
    DateTime timestamp = DateTime.now();
    Map<String, dynamic> item = {
      'data': value,
      'timestamp': timestamp,
    };
    _cache[key] = item;
  }

  dynamic _getFromCache(String key, Function() ifExpired) {
    if (_cache.containsKey(key) &&
        DateTime.now().difference(_cache[key]['timestamp']) < cacheDuration) {
      return _cache[key]['data'];
    }
    return ifExpired();
  }

  Future<dynamic> _fetchFromAPI(String url, String cacheKey) async {
    Function() getFromAPI = () async {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        _setInCache(cacheKey, data);
        return data;
      } else {
        throw Exception('Failed to load tournaments');
      }
    };
    return _getFromCache(cacheKey, getFromAPI);
  }

  Future<List<Tournament>> fetchTournaments() async {
    final cacheKey = 'tournaments';
    final url = '$APIURL/search_keys';
    final tournaments = [
      for (var x in ((await _fetchFromAPI(url, cacheKey) as Map<String, dynamic>)['data']))
        Tournament.fromJson(x)
    ];
    return tournaments;
  }

  Future<Map<String, dynamic>> fetchStatDescription(
      int year, String event) async {
    final cacheKey = '${year}_${event}_stat_description';
    final url = '$APIURL/$year/$event/stat_description';
    return await _fetchFromAPI(url, cacheKey) as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> fetchTeamStats(
      int year, String event, String team) async {
    final cacheKey = '${year}_${event}_${team}_team_stats';
    final url = '$APIURL/$year/$event/$team/stats';
    return await _fetchFromAPI(url, cacheKey) as Map<String, dynamic>;
  }

  Future<List<TeamStats>> fetchEventRankings(int year, String event) async {
    final cacheKey = '${year}_${event}_rankings';
    final url = '${APIURL}/${year}/${event}/stats';
    var data = (await _fetchFromAPI(url, cacheKey))['data'];
    data = [...data];
    data.removeAt(0);
    return [for (var x in data) TeamStats.fromJson(x)];
  }

  Future<List<dynamic>> fetchPitStatus(int year, String event) async {
    final cacheKey = '${year}_${event}_pit_status';
    final url = '${APIURL}/${year}/${event}/pitStatus';
    var data = (await _fetchFromAPI(url, cacheKey))['data'];
    data = [...data];
    return data;
  }

  Future<List<dynamic>> fetchQualMatches(int year, String event) async {
    final cacheKey = '${year}_${event}_predictions';
    final url = '${APIURL}/${year}/${event}/predictions';
    var data = (await _fetchFromAPI(url, cacheKey))['data'];
    data = [...data];
    return data;
  }

}
