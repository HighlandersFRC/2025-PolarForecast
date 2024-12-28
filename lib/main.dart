import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../pages/home_page.dart';
import 'theme/theme_provider.dart';
import 'api_service.dart'; // Make sure this file contains the ApiService class
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  await dotenv.load(fileName: '.env');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Initialize ApiService with the base URL for API calls
        Provider<ApiService>(
          create: (_) => ApiService(dotenv.env['API_URL'].toString()),
        ),
        ChangeNotifierProvider(create: (_) => ThemeDataProvider()),
      ],
      child: MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeDataProvider>(
        builder: (context, themeNotifier, child) {
      return MaterialApp(
        home: Builder(
          builder: (context) => HomePage(),
        ),
        theme: themeNotifier.themeData,
        routes: {
          '/home': (context) => HomePage(),
          // '/autos': (context) => AutosPage([], ""),
        },
      );
    });
  }
}
