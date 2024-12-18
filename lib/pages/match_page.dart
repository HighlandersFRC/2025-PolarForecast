import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Widgets/polar_forecast_app_bar.dart';
import '../api_service.dart';
import '../models/match_details_2024.dart';
import '../models/tournament.dart';

class MatchPage extends StatefulWidget {
  final Tournament tournament;
  final String match_key;
  final String? display;
  const MatchPage(this.match_key, this.tournament, {this.display});

  @override
  _MatchPageState createState() => _MatchPageState();
}

class _MatchPageState extends State<MatchPage> {
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
      _StatsTab(widget),
      _RedTab(widget),
      _BlueTab(widget),
    ];
    return Scaffold(
      appBar: PolarForecastAppBar(
        extraText: widget.display != null
            ? '${widget.display} - ${widget.tournament.display}'
            : widget.match_key,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (newTabIdx) => setState(() => _currentTab = newTabIdx),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.storage_outlined, color: theme.primaryColor),
              activeIcon: Icon(Icons.storage, color: theme.primaryColor),
              label: 'Stats'),
          BottomNavigationBarItem(
              icon: Icon(Icons.precision_manufacturing_outlined,
                  color: Colors.red),
              activeIcon:
                  Icon(Icons.precision_manufacturing, color: Colors.red),
              label: 'Red Autos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.precision_manufacturing_outlined,
                  color: Colors.blue),
              activeIcon:
                  Icon(Icons.precision_manufacturing, color: Colors.blue),
              label: 'Blue Autos'),
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

class _StatsTab extends StatefulWidget {
  final MatchPage widget;

  const _StatsTab(this.widget);

  @override
  _StatsTabState createState() => _StatsTabState();
}

class _StatsTabState extends State<_StatsTab> {
  MatchDetails2024? stats;
  Map<String, dynamic> statDescription = {'scoutingData': {}};

  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    fetchData().then((_) => updateGrid());
  }

  Future<void> fetchData() async {
    final apiService = Provider.of<ApiService>(context, listen: false);
    // try {
    final fetchedStats = (await apiService.getMatchDetails(
      int.parse(widget.widget.tournament.page.split('/')[3]),
      widget.widget.tournament.page.split('/')[4],
      widget.widget.match_key,
    ));
    if (mounted) {
      setState(() {
        stats = fetchedStats;
        isLoading = false;
      });
    }
    // } catch (e) {
    //   print('Error fetching data: $e');
    // }
  }

  updateGrid() {
    print(stats);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [Text('PitScouting')],
      ),
    );
  }
}

class _RedTab extends StatefulWidget {
  final MatchPage widget;

  const _RedTab(this.widget);

  @override
  _RedTabState createState() => _RedTabState();
}

class _RedTabState extends State<_RedTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [Text('PitScouting')],
      ),
    );
  }
}

class _BlueTab extends StatefulWidget {
  final MatchPage widget;

  const _BlueTab(this.widget);

  @override
  _BlueTabState createState() => _BlueTabState();
}

class _BlueTabState extends State<_BlueTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [Text('PitScouting')],
      ),
    );
  }
}
