import 'package:flutter/material.dart';
import '../Widgets/polar_forecast_app_bar.dart';
import '../api_service.dart';

class TeamPage extends StatefulWidget {
  final int teamNumber;
  final Tournament tournament;
  TeamPage(this.teamNumber, this.tournament);

  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PolarForecastAppBar(),
      body: Stack(
        children: [
          Center(
            child: Text(
              "Team ${widget.teamNumber}'s Page",
              style: TextStyle(color: Colors.blue, fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
