import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Widgets/polar_forecast_app_bar.dart';
import '../api_service.dart';

class TeamPage extends StatefulWidget {
  final Tournament tournament;
  final int number;

  const TeamPage(this.number, this.tournament);

  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  int _currentTab = 0;
  bool isMobile() {
    if (kIsWeb) {
      return false;
    }
    return Platform.isAndroid || Platform.isIOS;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final List<Widget> tabs = [
      _ScheduleTab(widget),
      _StatsTab(widget),
      _PicturesTab(widget),
      _MatchScoutingTab(widget),
      _PitScoutingTab(widget),
      _AutosTab(widget),
      _DeathsTab(widget),
    ];
    return Scaffold(
      appBar: PolarForecastAppBar(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (newTabIdx) => setState(() => _currentTab = newTabIdx),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.event_note_outlined, color: theme.primaryColor),
              activeIcon: Icon(Icons.event_note, color: theme.primaryColor),
              label: 'Schedule'),
          BottomNavigationBarItem(
              icon: Icon(Icons.storage_outlined, color: theme.primaryColor),
              activeIcon: Icon(Icons.storage, color: theme.primaryColor),
              label: 'Stats'),
          BottomNavigationBarItem(
              icon: Icon(Icons.photo_outlined, color: theme.primaryColor),
              activeIcon: Icon(Icons.photo, color: theme.primaryColor),
              label: 'Pictures'),
          BottomNavigationBarItem(
              icon: Icon(Icons.visibility_outlined, color: theme.primaryColor),
              activeIcon: Icon(Icons.visibility, color: theme.primaryColor),
              label: 'Match Scouting'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment_outlined, color: theme.primaryColor),
              activeIcon: Icon(Icons.assignment, color: theme.primaryColor),
              label: 'Pit Scouting'),
          BottomNavigationBarItem(
              icon: Icon(Icons.precision_manufacturing_outlined,
                  color: theme.primaryColor),
              activeIcon: Icon(Icons.precision_manufacturing,
                  color: theme.primaryColor),
              label: 'Autos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.privacy_tip_outlined, color: theme.primaryColor),
              activeIcon: Icon(Icons.privacy_tip, color: theme.primaryColor),
              label: 'Deaths')
        ],
        type: BottomNavigationBarType.shifting,
        selectedLabelStyle: TextStyle(
            color: theme.brightness == Brightness.dark
                ? Colors.white
                : Colors.black),
        selectedItemColor:
            theme.brightness == Brightness.dark ? Colors.white : Colors.black,
        showUnselectedLabels: false,
      ),
      body: tabs[_currentTab],
    );
  }
}

class _ScheduleTab extends StatefulWidget {
  final TeamPage widget;

  const _ScheduleTab(this.widget);

  @override
  _ScheduleTabState createState() => _ScheduleTabState();
}

class _ScheduleTabState extends State<_ScheduleTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [Text("Schedule")],
      ),
    );
  }
}

class _StatsTab extends StatefulWidget {
  final TeamPage widget;

  const _StatsTab(this.widget);

  @override
  _StatsTabState createState() => _StatsTabState();
}

class _StatsTabState extends State<_StatsTab> {
  Map<String, dynamic> stats = {};
  Map<String, dynamic> statDescription = {'data': []};
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    fetchStats();
  }

  void fetchStats() async {
    final apiService = Provider.of<ApiService>(context, listen: false);
    try {
      final fetchedStats = await apiService.fetchTeamStats(
        int.parse(widget.widget.tournament.page.split('/')[3]),
        widget.widget.tournament.page.split('/')[4],
        'frc${widget.widget.number}',
      );
      final fetchedStatDescription = await apiService.fetchStatDescription(
        int.parse(widget.widget.tournament.page.split('/')[3]),
        widget.widget.tournament.page.split('/')[4],
      );
      if (mounted) {
        setState(() {
          stats = fetchedStats;
          statDescription = fetchedStatDescription;
          isLoading = false;
        });
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Text(
            '${widget.widget.tournament.display} - Team ${widget.widget.number} Stats',
            style: TextStyle(color: Colors.blue, fontSize: 24),
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              ...stats.entries.map((entry) => Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: theme.primaryColor,
                      ),
                      color: theme.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [Text(entry.key), Text(entry.value.toString())],
                    ),
                  )),
            ],
          ),
        ],
      ),
    ));
  }
}

class _PicturesTab extends StatefulWidget {
  final TeamPage widget;

  const _PicturesTab(this.widget);

  @override
  _PicturesTabState createState() => _PicturesTabState();
}

class _PicturesTabState extends State<_PicturesTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [Text("Pictures")],
      ),
    );
  }
}

class _MatchScoutingTab extends StatefulWidget {
  final TeamPage widget;

  const _MatchScoutingTab(this.widget);

  @override
  _MatchScoutingTabState createState() => _MatchScoutingTabState();
}

class _MatchScoutingTabState extends State<_MatchScoutingTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [Text("MatchScouting")],
      ),
    );
  }
}

class _PitScoutingTab extends StatefulWidget {
  final TeamPage widget;

  const _PitScoutingTab(this.widget);

  @override
  _PitScoutingTabState createState() => _PitScoutingTabState();
}

class _PitScoutingTabState extends State<_PitScoutingTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [Text("PitScouting")],
      ),
    );
  }
}

class _AutosTab extends StatefulWidget {
  final TeamPage widget;

  const _AutosTab(this.widget);

  @override
  _AutosTabState createState() => _AutosTabState();
}

class _AutosTabState extends State<_AutosTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [Text("Autos")],
      ),
    );
  }
}

class _DeathsTab extends StatefulWidget {
  final TeamPage widget;

  const _DeathsTab(this.widget);

  @override
  _DeathsTabState createState() => _DeathsTabState();
}

class _DeathsTabState extends State<_DeathsTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [Text("Deaths")],
      ),
    );
  }
}
