import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scouting_app/Widgets/bar_chart_with_weights.dart';
import 'package:scouting_app/Widgets/team_link.dart';
import '../Widgets/polar_forecast_app_bar.dart';
import '../api_service.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

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
        onTap: (newTabIdx) => setState(() => _currentTab = newTabIdx),
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
              activeIcon: Icon(Icons.remove_red_eye, color: theme.primaryColor),
              label: 'Match Scouting'),
          BottomNavigationBarItem(
              icon: Icon(Icons.group_add_outlined, color: theme.primaryColor),
              activeIcon: Icon(Icons.group_add, color: theme.primaryColor),
              label: 'Pit Scouting'),
          BottomNavigationBarItem(
              icon:
                  Icon(Icons.sports_score_outlined, color: theme.primaryColor),
              activeIcon: Icon(Icons.sports_score, color: theme.primaryColor),
              label: 'Quals'),
          BottomNavigationBarItem(
              icon: Icon(Icons.workspace_premium_outlined,
                  color: theme.primaryColor),
              activeIcon:
                  Icon(Icons.workspace_premium, color: theme.primaryColor),
              label: 'Elims'),
          BottomNavigationBarItem(
              icon: Icon(Icons.precision_manufacturing_outlined,
                  color: theme.primaryColor),
              activeIcon: Icon(Icons.precision_manufacturing,
                  color: theme.primaryColor),
              label: 'Autos')
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

class _RankingsTab extends StatefulWidget {
  final EventPage widget;
  const _RankingsTab(this.widget);

  Tournament get tournament => widget.tournament;

  @override
  State<_RankingsTab> createState() => _RankingsTabState();
}

class _RankingsTabState extends State<_RankingsTab> {
  List<TeamStats> rankings = [];
  Map<String, dynamic> statDescription = {'data': []};
  bool isLoading = true;
  List<GridColumn> dataColumns = [];
  Map<String, bool> heatMapFromKey = {};
  Map<String, num> minValues = {};
  Map<String, num> maxValues = {};
  List<DataGridRow> dataRows = [];
  @override
  void initState() {
    super.initState();
    updateGrid();
    fetchData().then((_) {
      updateGrid();
    });
  }

  void updateGrid() {
    dataColumns = [
      GridColumn(
          label: Text('#'),
          columnName: 'team_number',
          filterPopupMenuOptions: FilterPopupMenuOptions()),
      GridColumn(label: Text('OPR'), columnName: 'OPR'),
    ];
    heatMapFromKey = {
      'team_number': false,
      'OPR': true,
    };
    for (var stat in statDescription['data']) {
      if (stat['report_stat'] && stat['stat_key'] != 'OPR') {
        heatMapFromKey[stat['stat_key']] = stat['stat_type'] == 'num';
        dataColumns.add(GridColumn(
          label: Text(stat['display_name']),
          columnName: stat['stat_key'],
        ));
      }
    }
    minValues = {};
    maxValues = {};
    for (var column in dataColumns) {
      if (heatMapFromKey[column.columnName]!) {
        var columnKey = column.columnName;
        minValues[columnKey] = double.infinity;
        maxValues[columnKey] = double.negativeInfinity;

        for (var rank in rankings) {
          var value = rank.data[columnKey];
          if (value < minValues[columnKey]!) minValues[columnKey] = value;
          if (value > maxValues[columnKey]!) maxValues[columnKey] = value;
        }
      }
    }

    dataRows = [];
    for (var rank in rankings) {
      List<DataGridCell> cells = [];
      for (var column in dataColumns) {
        try {
          if (heatMapFromKey[column.columnName] != null &&
              !(heatMapFromKey[column.columnName]!))
            cells.add(DataGridCell(
                columnName: column.columnName,
                value: heatMapFromKey[column.columnName]!
                    ? (rank.data[column.columnName] as num).toStringAsFixed(2)
                    : rank.data[column.columnName].toString()));
          else
            cells.add(DataGridCell(
              columnName: column.columnName,
              value: rank.data[column.columnName],
            ));
        } catch (e) {
          print(e);
          cells.add(DataGridCell(columnName: column.columnName, value: ''));
        }
      }
      dataRows.add(DataGridRow(
        cells: cells,
      ));
    }
  }

  Future<void> fetchData() async {
    final apiService = Provider.of<ApiService>(context, listen: false);
    try {
      final fetchedRankings = await apiService.fetchEventRankings(
          int.parse(widget.tournament.page.split('/')[3]),
          widget.tournament.page.split('/')[4]);
      final fetchedStatDescription = await apiService.fetchStatDescription(
          int.parse(widget.tournament.page.split('/')[3]),
          widget.tournament.page.split('/')[4]);

      if (mounted) {
        setState(() {
          rankings = fetchedRankings;
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

    if (isLoading) {
      return Center(child: CircularProgressIndicator());
    }

    return Center(
        child: LayoutBuilder(
            builder: (context, constraints) => Container(
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                child: InteractiveViewer(
                  scaleEnabled: false,
                  clipBehavior: Clip.hardEdge,
                  child: SfDataGrid(
                    allowFiltering: true,
                    allowSorting: true,
                    columns: dataColumns,
                    frozenColumnsCount: 2,
                    source: _TeamDataSource(dataRows, minValues, maxValues,
                        heatMapFromKey, context, widget.tournament),
                    stackedHeaderRows: [
                      StackedHeaderRow(cells: [
                        StackedHeaderCell(
                            columnNames: [
                              for (var column in dataColumns) column.columnName
                            ],
                            child: Container(
                                constraints: BoxConstraints.expand(),
                                color: theme.primaryColor.withOpacity(0.3),
                                child: Text(widget.tournament.display)))
                      ])
                    ],
                  ),
                ))));
  }
}

class _TeamDataSource extends DataGridSource {
  _TeamDataSource(this.rows, this.minValues, this.maxValues, this.heatMap,
      this.context, this.tournament);
  final Map<String, dynamic> minValues, maxValues, heatMap;
  final List<DataGridRow> rows;
  final BuildContext context;
  final Tournament tournament;
  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map<Widget>((e) {
        int rowNumber = rows.indexOf(row);
        bool even = rowNumber % 2 == 0;
        final color = heatMap[e.columnName] != null && heatMap[e.columnName]!
            ? _getGradientColor(
                e.value, minValues[e.columnName], maxValues[e.columnName])
            : even
                ? Theme.of(context).primaryColor.withOpacity(0.3)
                : Colors.black.withOpacity(0);
        if (e.columnName == 'team_number')
          return Container(
              color: color, child: TeamLink(int.parse(e.value), tournament));
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.center,
          color: color,
          child: Text('${_formatValue(e.value)}',
              style: TextStyle(color: Colors.white)),
        );
      }).toList(),
    );
  }

  Color _getGradientColor(num value, num minValue, num maxValue) {
    double normalizedValue = (value - minValue) / (maxValue - minValue);
    normalizedValue = normalizedValue.clamp(0.0, 1.0);
    return Color.lerp(Colors.red, Colors.green, normalizedValue)!
        .withOpacity(0.6);
  }

  double _roundToTenths(double value) {
    return (value * 10).roundToDouble() / 10;
  }

  dynamic _formatValue(dynamic value) {
    if (value is double) {
      return _roundToTenths(value).toStringAsFixed(1);
    }
    return value;
  }
}

class _ChartsTab extends StatefulWidget {
  final EventPage widget;
  const _ChartsTab(this.widget);

  @override
  State<StatefulWidget> createState() {
    return new _ChartsTabState();
  }
}

class _ChartsTabState extends State<_ChartsTab> {
  List<TeamStats> rankings = [];
  Map<String, dynamic> statDescription = {'data': []};
  bool isLoading = true;

  Future<void> fetchData() async {
    final apiService = Provider.of<ApiService>(context, listen: false);
    try {
      final fetchedRankings = await apiService.fetchEventRankings(
          int.parse(widget.widget.tournament.page.split('/')[3]),
          widget.widget.tournament.page.split('/')[4]);
      final fetchedStatDescription = await apiService.fetchStatDescription(
          int.parse(widget.widget.tournament.page.split('/')[3]),
          widget.widget.tournament.page.split('/')[4]);

      if (mounted) {
        setState(() {
          rankings = fetchedRankings;
          statDescription = fetchedStatDescription;
          isLoading = false;
        });
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Center(child: CircularProgressIndicator());
    }
    return Center(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Text(
            widget.widget.tournament.display,
            style: TextStyle(color: Colors.blue, fontSize: 24),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: BarChartWithWeights(
                  title: 'OPR By Game Period',
                  data: rankings,
                  number: 24,
                  startingFields: [
                    Field(
                        name: 'Auto',
                        key: 'auto_points',
                        enabled: true,
                        weight: 1),
                    Field(
                        name: 'Teleop',
                        key: 'teleop_points',
                        enabled: true,
                        weight: 1),
                    Field(
                        name: 'End Game',
                        key: 'endgame_points',
                        enabled: true,
                        weight: 1),
                  ])),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: BarChartWithWeights(
                  title: 'Notes By Game Period',
                  data: rankings,
                  number: 24,
                  startingFields: [
                    Field(
                        name: 'Teleop Notes',
                        key: 'teleop_notes',
                        enabled: true,
                        weight: 1),
                    Field(
                        name: 'Auto Notes',
                        key: 'auto_notes',
                        enabled: true,
                        weight: 1),
                    Field(
                        name: 'Endgame Notes',
                        key: 'trap',
                        enabled: true,
                        weight: 1),
                  ])),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: BarChartWithWeights(
                  title: 'Notes By Placement',
                  data: rankings,
                  number: 24,
                  startingFields: [
                    Field(
                        name: 'Speaker',
                        key: 'speaker_total',
                        enabled: true,
                        weight: 1),
                    Field(
                        name: 'Amp',
                        key: 'amp_total',
                        enabled: true,
                        weight: 1),
                    Field(name: 'Trap', key: 'trap', enabled: true, weight: 1),
                    Field(
                        name: 'Pass',
                        key: 'teleop_pass',
                        enabled: true,
                        weight: 0.5),
                  ])),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: BarChartWithWeights(
                  title: 'Full OPR Breakdown',
                  data: rankings,
                  number: 24,
                  startingFields: [
                    new Field(
                        name: 'AS',
                        key: 'auto_speaker',
                        enabled: true,
                        weight: 5),
                    Field(
                        name: 'AA', key: 'auto_amp', enabled: true, weight: 2),
                    Field(
                        name: 'TS',
                        key: 'teleop_speaker',
                        enabled: true,
                        weight: 2),
                    Field(
                        name: 'TAS',
                        key: 'teleop_amped_speaker',
                        enabled: true,
                        weight: 5),
                    Field(
                        name: 'TA',
                        key: 'teleop_amp',
                        enabled: true,
                        weight: 1),
                    Field(
                        name: 'Pass',
                        key: 'teleop_pass',
                        enabled: true,
                        weight: 1),
                    Field(name: 'Trap', key: 'trap', enabled: true, weight: 5),
                    Field(
                        name: 'Taxi',
                        key: 'mobility',
                        enabled: true,
                        weight: 2),
                    Field(
                        name: 'Park', key: 'parking', enabled: true, weight: 1),
                    Field(
                        name: 'Climb',
                        key: 'climbing',
                        enabled: true,
                        weight: 3),
                    Field(
                        name: 'Deathrate',
                        key: 'death_rate',
                        enabled: true,
                        weight: -10),
                  ])),
        ],
      ),
    ));
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

class _PitScoutingTab extends StatefulWidget {
  final EventPage widget;
  const _PitScoutingTab(this.widget);

  @override
  State<StatefulWidget> createState() {
    return new _PitScoutingTabState();
  }
}

class _PitScoutingTabState extends State<_PitScoutingTab> {
  List<GridColumn> dataColumns = [];
  List<DataGridRow> dataRows = [];
  List<dynamic> statuses = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    updateGrid();
    fetchData().then((_) => updateGrid());
  }

  Future<void> fetchData() async {
    final apiService = Provider.of<ApiService>(context, listen: false);
    try {
      final fetchedStatus = await apiService.fetchPitStatus(
          int.parse(widget.widget.tournament.page.split('/')[3]),
          widget.widget.tournament.page.split('/')[4]);
      if (mounted) {
        setState(() {
          statuses = fetchedStatus;
          isLoading = false;
        });
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }

  void updateGrid() {
    dataColumns = [
      GridColumn(
          columnName: 'key',
          label: Text(
            'Team',
            textAlign: TextAlign.center,
          )),
      GridColumn(
          columnName: 'pit_status',
          label: Text(
            'Pit Scouting',
            textAlign: TextAlign.center,
          )),
      GridColumn(
          columnName: 'picture_status',
          label: Text(
            'Pictures',
            textAlign: TextAlign.center,
          )),
      GridColumn(
          columnName: 'follow_up_status',
          label: Text(
            'Follow Up',
            textAlign: TextAlign.center,
          )),
    ];
    dataRows = [
      for (Map<String, dynamic> status in statuses)
        DataGridRow(cells: [
          DataGridCell(columnName: 'key', value: status['key']),
          DataGridCell(columnName: 'pit_status', value: status['pit_status']),
          DataGridCell(
              columnName: 'picture_status', value: status['picture_status']),
          DataGridCell(
              columnName: 'follow_up_status',
              value: status['follow_up_status']),
        ])
    ];
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
        child: LayoutBuilder(
            builder: (context, constraints) => Container(
                alignment: Alignment.center,
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                child: InteractiveViewer(
                  scaleEnabled: false,
                  clipBehavior: Clip.hardEdge,
                  child: SfDataGrid(
                    columns: dataColumns,
                    defaultColumnWidth: constraints.maxWidth / 4,
                    frozenColumnsCount: 0,
                    source: _StatusSource(
                        context, dataRows, widget.widget.tournament),
                    stackedHeaderRows: [
                      StackedHeaderRow(cells: [
                        StackedHeaderCell(
                            columnNames: [
                              for (var column in dataColumns) column.columnName
                            ],
                            child: Container(
                                constraints: BoxConstraints.expand(),
                                color: theme.primaryColor.withOpacity(0.3),
                                child: Text(widget.widget.tournament.display)))
                      ])
                    ],
                  ),
                ))));
  }
}

class _StatusSource extends DataGridSource {
  final BuildContext context;
  final List<DataGridRow> rows;
  final Tournament tournament;
  _StatusSource(BuildContext this.context, this.rows, this.tournament);
  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    List<DataGridCell> cells = row.getCells();
    List<Widget> returnCells = [];
    for (DataGridCell cell in cells) {
      int rowNumber = rows.indexOf(row);
      bool even = rowNumber % 2 == 0;
      final color = even
          ? Theme.of(context).primaryColor.withOpacity(0.3)
          : Colors.black.withOpacity(0);
      cell.columnName == 'key'
          ? returnCells.add(Container(
              color: color,
              child: TeamLink(
                int.parse(cell.value),
                tournament,
              )))
          : returnCells.add(Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.center,
              color: color,
              child: Text(cell.value.toString(),
                  style: TextStyle(
                      color: cell.value == 'Incomplete'
                          ? Colors.yellow
                          : cell.value == 'Done'
                              ? Colors.green
                              : Colors.red)),
            ));
    }
    return DataGridRowAdapter(
      cells: returnCells,
    );
  }
}

class _MatchStatusSource extends DataGridSource {
  final BuildContext context;
  final List<DataGridRow> rows;
  final Tournament tournament;
  _MatchStatusSource(BuildContext this.context, this.rows, this.tournament);
  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    List<DataGridCell> cells = row.getCells();
    List<Widget> returnCells = [];
    for (DataGridCell cell in cells) {
      int rowNumber = rows.indexOf(row);
      bool even = rowNumber % 2 == 0;
      final color = even
          ? Theme.of(context).primaryColor.withOpacity(0.3)
          : Colors.black.withOpacity(0);
      cell.columnName == 'key'
          ? returnCells.add(Container(
              color: color,
              child: Text(cell.value.toString(),
                  style: TextStyle(color: Colors.white))))
          : returnCells.add(Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.center,
              color: color,
              child: Text(
                cell.value.toString(),
              ),
            ));
    }
    return DataGridRowAdapter(
      cells: returnCells,
    );
  }
}

class _QualsTab extends StatefulWidget {
  final EventPage widget;
  const _QualsTab(this.widget);

  @override
  State<StatefulWidget> createState() {
    return new _QualsTabState();
  }
}

class _QualsTabState extends State<_QualsTab> {
  List<GridColumn> dataColumns = [];
  List<DataGridRow> dataRows = [];
  List<dynamic> statuses = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    updateGrid();
    fetchData().then((_) => updateGrid());
  }

  Future<void> fetchData() async {
    final apiService = Provider.of<ApiService>(context, listen: false);
    try {
      final fetchedStatus = await apiService.fetchQualMatches(
          int.parse(widget.widget.tournament.page.split('/')[3]),
          widget.widget.tournament.page.split('/')[4]);
      if (mounted) {
        setState(() {
          statuses = fetchedStatus;
          isLoading = false;
        });
      }
    } catch (e) {
      // print('Error fetching data: $e');
      throw (e);
    }
  }

  void updateGrid() {
    dataColumns = [
      GridColumn(
          columnName: 'key',
          label: Text(
            'Match',
            textAlign: TextAlign.center,
          )),
      GridColumn(
          columnName: 'result_type',
          label: Text(
            'Type',
            textAlign: TextAlign.center,
          )),
      GridColumn(
          columnName: 'blue_rp',
          label: Text(
            'Blue RP',
            textAlign: TextAlign.center,
          )),
      GridColumn(
          columnName: 'red_rp',
          label: Text(
            'Red RP',
            textAlign: TextAlign.center,
          )),
    ];

    statuses.sort((a, b) {
      return a['match_number'] - b['match_number'];
    });

    dataRows = [
      for (Map<String, dynamic> status in statuses)
        if (status['comp_level'] == 'qm')
          DataGridRow(cells: [
            DataGridCell(columnName: 'key', value: status['key']),
            DataGridCell(
                columnName: 'result_type',
                value: status['predicted'] ? 'Predicted' : 'Result'),
            DataGridCell(
                columnName: 'blue_rp', value: status['blue_display_rp']),
            DataGridCell(columnName: 'red_rp', value: status['red_display_rp']),
          ])
    ];
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
        child: LayoutBuilder(
            builder: (context, constraints) => Container(
                alignment: Alignment.center,
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                child: InteractiveViewer(
                  scaleEnabled: false,
                  clipBehavior: Clip.hardEdge,
                  child: SfDataGrid(
                    columns: dataColumns,
                    defaultColumnWidth: constraints.maxWidth / 4,
                    frozenColumnsCount: 0,
                    source: _MatchStatusSource(
                        context, dataRows, widget.widget.tournament),
                    stackedHeaderRows: [
                      StackedHeaderRow(cells: [
                        StackedHeaderCell(
                            columnNames: [
                              for (var column in dataColumns) column.columnName
                            ],
                            child: Container(
                                constraints: BoxConstraints.expand(),
                                color: theme.primaryColor.withOpacity(0.3),
                                child: Text(widget.widget.tournament.display)))
                      ])
                    ],
                  ),
                ))));
  }
}

class _ElimsTab extends StatefulWidget {
  final EventPage widget;
  const _ElimsTab(this.widget);

  @override
  State<StatefulWidget> createState() {
    return new _ElimsTabState();
  }
}

class _ElimsTabState extends State<_ElimsTab> {
  List<GridColumn> dataColumns = [];
  List<DataGridRow> dataRows = [];
  List<dynamic> statuses = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    updateGrid();
    fetchData().then((_) => updateGrid());
  }

  Future<void> fetchData() async {
    final apiService = Provider.of<ApiService>(context, listen: false);
    try {
      final fetchedStatus = await apiService.fetchQualMatches(
          int.parse(widget.widget.tournament.page.split('/')[3]),
          widget.widget.tournament.page.split('/')[4]);
      if (mounted) {
        setState(() {
          statuses = fetchedStatus;
          isLoading = false;
        });
      }
    } catch (e) {
      // print('Error fetching data: $e');
      throw (e);
    }
  }

  void updateGrid() {
    dataColumns = [
      GridColumn(
          columnName: 'key',
          label: Text(
            'Match',
            textAlign: TextAlign.center,
          )),
      GridColumn(
          columnName: 'result_type',
          label: Text(
            'Type',
            textAlign: TextAlign.center,
          )),
      GridColumn(
          columnName: 'winner',
          label: Text(
            'Winner',
            textAlign: TextAlign.center,
          )),
    ];

    statuses.sort((a, b) {
      return a['match_number'] - b['match_number'];
    });

    statuses.sort((a, b) {
      if (a['set_number'] - b['set_number'] == 0) {
        return a['match_number'] - b['match_number'];
      } else {
        return a['set_number'] - b['set_number'];
      }
    });

    statuses.sort((a, b) {
      if (b['comp_level'].length - a['comp_level'].length != 0) {
        return b['comp_level'].length - a['comp_level'].length;
      } else {
        if (a['set_number'] - b['set_number'] == 0) {
          return a['match_number'] - b['match_number'];
        } else {
          return a['set_number'] - b['set_number'];
        }
      }
    });

    dataRows = [
      for (Map<String, dynamic> status in statuses)
        if (status['comp_level'] != 'qm')
          DataGridRow(cells: [
            DataGridCell(columnName: 'key', value: status['key']),
            DataGridCell(
                columnName: 'result_type',
                value: status['predicted'] ? 'Predicted' : 'Result'),
            DataGridCell(
                columnName: 'winner', 
                value: status['blue_win_rp'] == 2 ? 'Blue' : status['blue_win_rp'] == 0 ? 'Red' : 'Tie'),
          ])
    ];
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
        child: LayoutBuilder(
            builder: (context, constraints) => Container(
                alignment: Alignment.center,
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                child: InteractiveViewer(
                  scaleEnabled: false,
                  clipBehavior: Clip.hardEdge,
                  child: SfDataGrid(
                    columns: dataColumns,
                    defaultColumnWidth: constraints.maxWidth / 3,
                    frozenColumnsCount: 0,
                    source: _MatchStatusSource(
                        context, dataRows, widget.widget.tournament),
                    stackedHeaderRows: [
                      StackedHeaderRow(cells: [
                        StackedHeaderCell(
                            columnNames: [
                              for (var column in dataColumns) column.columnName
                            ],
                            child: Container(
                                constraints: BoxConstraints.expand(),
                                color: theme.primaryColor.withOpacity(0.3),
                                child: Text(widget.widget.tournament.display)))
                      ])
                    ],
                  ),
                ))));
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
