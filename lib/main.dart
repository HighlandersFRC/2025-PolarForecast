import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'api_service.dart'; // Make sure this file contains the ApiService class
import 'scouting_page.dart';
import 'pit_scouting_page.dart';
import 'bracket_page.dart';
import 'settings_page.dart';
import 'stats_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Initialize ApiService with the base URL for API calls
        Provider<ApiService>(
          create: (_) => ApiService('https://highlanderscouting.azurewebsites.net'),
        ),
      ],
      child: MaterialApp(
        title: 'Polar Forecast',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            elevation: 4,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.black,
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.grey,
          ),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    ScoutingPage(),
    PitScoutingPage(),
    BracketPage(),
    StatsPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Polar Forecast'),
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset('assets/icon.png', height: 80),
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box),
            label: 'Scouting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            label: 'Pit Scouting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timeline),
            label: 'Profits',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Stats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
//hi