import 'dart:convert';
import 'package:http/http.dart' as http;

class Tournament {
  final String id;
  final String name;

  Tournament({required this.id, required this.name});

  factory Tournament.fromJson(Map<String, dynamic> json) {
    return Tournament(
      id: json['id'] as String,
      name: json['name'] as String,
    );
  }
}

class ApiService {
  final String tournamentsUrl;

  ApiService(this.tournamentsUrl);

  Future<List<Tournament>> fetchTournaments() async {
    try {
      final response = await http.get(Uri.parse(tournamentsUrl));

      if (response.statusCode == 200) {
        final data = json.decode(response.body) as List;
        return data.map((json) => Tournament.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load tournaments');
      }
    } catch (e) {
      throw Exception('Error fetching tournaments: $e');
    }
  }

  Future<Map<String, dynamic>> fetchMatchStats(String tournamentId, String matchId) async {
    final url = 'https://example.com/match_stats?tournamentId=$tournamentId&matchId=$matchId';
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
