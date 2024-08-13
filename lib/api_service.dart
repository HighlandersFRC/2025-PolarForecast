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

class ApiService {
  final String APIURL;

  ApiService(this.APIURL);

  Future<List<Tournament>> fetchTournaments() async {
    try {
      final response = await http.get(Uri.parse('$APIURL/search_keys'));

      if (response.statusCode == 200) {
        final data = json.decode(response.body)["data"] as List;
        return data.map((json) => Tournament.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load tournaments');
      }
    } catch (e) {
      throw Exception('Error fetching tournaments: $e');
    }
  }

  Future<Map<String, dynamic>> fetchMatchStats(
      String tournamentId, String matchId) async {
    final url =
        'https://example.com/match_stats?tournamentId=$tournamentId&matchId=$matchId';
    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        return json.decode(response.body) as Map<String, dynamic>;
      } else {
        throw Exception('Failed to load stats');
      }
    } catch (e) {
      throw Exception('Error fetching stats: $e');
    }
  }
}
