import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../Widgets/polar_forecast_app_bar.dart';
import '../api_service.dart';

class EventPage extends StatefulWidget {
  final Tournament tournament;

  const EventPage({super.key, required this.tournament});

  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
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
      _RankingsTab(widget),
      _ChartsTab(widget),
      _MatchScoutingTab(widget),
      _PitScoutingTab(widget),
      _QualsTab(widget),
      _ElimsTab(widget),
      _AutosTab(widget),
    ];
    return Scaffold(
      appBar: PolarForecastAppBar(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (newTabIdx) =>
            setState(() => _currentTab = newTabIdx),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.trending_up_outlined, color: theme.primaryColor),
              activeIcon: Icon(Icons.trending_up, color: theme.primaryColor),
              label: 'Rankings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.stacked_bar_chart_outlined,
                  color: theme.primaryColor),
              activeIcon:
                  Icon(Icons.stacked_bar_chart, color: theme.primaryColor),
              label: 'Charts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.remove_red_eye_outlined,
                  color: theme.primaryColor),
              activeIcon:
                  Icon(Icons.remove_red_eye, color: theme.primaryColor),
              label: 'Match Scouting'),
          BottomNavigationBarItem(
              icon: Icon(Icons.group_add_outlined, color: theme.primaryColor),
              activeIcon: Icon(Icons.group_add, color: theme.primaryColor),
              label: 'Pit Scouting'),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_score_outlined, color: theme.primaryColor),
              activeIcon: Icon(Icons.sports_score, color: theme.primaryColor),
              label: 'Quals'),
          BottomNavigationBarItem(
              icon: Icon(Icons.workspace_premium_outlined, color: theme.primaryColor),
              activeIcon: Icon(Icons.workspace_premium, color: theme.primaryColor),
              label: 'Elims'),
          BottomNavigationBarItem(
              icon: Icon(Icons.precision_manufacturing_outlined, color: theme.primaryColor),
              activeIcon: Icon(Icons.precision_manufacturing, color: theme.primaryColor),
              label: 'Autos')
        ],
        type: BottomNavigationBarType.shifting,
        selectedLabelStyle: TextStyle(color: theme.brightness == Brightness.dark? Colors.white : Colors.black),
        selectedItemColor: theme.brightness == Brightness.dark? Colors.white : Colors.black,
        showUnselectedLabels: false,
      ),
      body: tabs[_currentTab],
    );
  }
}

class _RankingsTab extends StatelessWidget {
  final EventPage widget;
  const _RankingsTab(this.widget);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(children: [
            Text(
              widget.tournament.display,
              style: TextStyle(color: Colors.blue, fontSize: 24),
            ),
            Text(
              'Tournament Stats Go Here',
              style: TextStyle(color: Colors.blue, fontSize: 24),
            )
          ]),
        ),
      ],
    );
  }
}

class _ChartsTab extends StatelessWidget {
  final EventPage widget;
  const _ChartsTab(this.widget);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            widget.tournament.display,
            style: TextStyle(color: Colors.blue, fontSize: 24),
          ),
          Text(
            'Charts Go Here',
            style: TextStyle(color: Colors.blue, fontSize: 24),
          )
        ],
      ),
    );
  }
}

class _MatchScoutingTab extends StatelessWidget {
  final EventPage widget;
  const _MatchScoutingTab(this.widget);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            widget.tournament.display,
            style: TextStyle(color: Colors.blue, fontSize: 24),
          ),
          Text(
            'Match Scouting Go Here',
            style: TextStyle(color: Colors.blue, fontSize: 24),
          )
        ],
      ),
    );
  }
}

class _PitScoutingTab extends StatelessWidget {
  final EventPage widget;
  const _PitScoutingTab(this.widget);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            widget.tournament.display,
            style: TextStyle(color: Colors.blue, fontSize: 24),
          ),
          Text(
            'Pit Scouting Go Here',
            style: TextStyle(color: Colors.blue, fontSize: 24),
          )
        ],
      ),
    );
  }
}

class _QualsTab extends StatelessWidget {
  final EventPage widget;
  const _QualsTab(this.widget);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            widget.tournament.display,
            style: TextStyle(color: Colors.blue, fontSize: 24),
          ),
          Text(
            'Qualifications Go Here',
            style: TextStyle(color: Colors.blue, fontSize: 24),
          )
        ],
      ),
    );
  }
}

class _ElimsTab extends StatelessWidget {
  final EventPage widget;
  const _ElimsTab(this.widget);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            widget.tournament.display,
            style: TextStyle(color: Colors.blue, fontSize: 24),
          ),
          Text(
            'Eliminations Go Here',
            style: TextStyle(color: Colors.blue, fontSize: 24),
          )
        ],
      ),
    );
  }
}

class _AutosTab extends StatelessWidget {
  final EventPage widget;
  const _AutosTab(this.widget);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            widget.tournament.display,
            style: TextStyle(color: Colors.blue, fontSize: 24),
          ),
          Text(
            'Autonomous Go Here',
            style: TextStyle(color: Colors.blue, fontSize: 24),
          )
        ],
      ),
    );
  }
}
