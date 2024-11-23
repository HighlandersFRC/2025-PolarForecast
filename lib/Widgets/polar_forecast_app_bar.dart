import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../pages/event_page.dart';
import '../api_service.dart';

class PolarForecastAppBar extends StatefulWidget
    implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String? extraText;

  const PolarForecastAppBar({super.key, this.extraText})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  State<StatefulWidget> createState() {
    return _PolarForecastAppBarState();
  }
}

class _PolarForecastAppBarState extends State<PolarForecastAppBar> {
  List<Tournament> tournaments = [];

  @override
  void initState() {
    super.initState();
    final apiService = Provider.of<ApiService>(context, listen: false);
    apiService.fetchTournaments().then((tournaments) {
      setState(() {
        this.tournaments = tournaments;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    bool isMobile() {
      if (kIsWeb) {
        return false;
      }
      return Platform.isAndroid || Platform.isIOS;
    }

    return AppBar(
      automaticallyImplyLeading: true,
      title: !isMobile()
          ? Row(
              children: [
                Image.asset(
                  'assets/PolarBearHead.png',
                  height:
                      kToolbarHeight * 0.8, // Adjust size based on screen width
                ),
                const SizedBox(
                    width: 8), // Add some spacing between image and text
                Flexible(
                  child: Text(
                    'Polar Forecast ${widget.extraText ?? ''}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: kToolbarHeight *
                          0.8, // Adjust font size based on screen width
                      fontFamily: 'OpenSans',
                    ),
                    overflow: TextOverflow.fade, // Prevent overflow
                  ),
                ),
              ],
            )
          : Image.asset(
              'assets/PolarBearHead.png',
              height: kToolbarHeight * 0.8, // Adjust size based on screen width
            ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            _openSearch();
          },
        ),
      ],
      backgroundColor: theme.primaryColor,
    );
  }

  void _openSearch() {
    showModalBottomSheet(
      context: context,
      builder: (context) => SearchAnchor.bar(
        suggestionsBuilder: (context, searchController) =>
            _getSuggestions(searchController),
      ),
    );
  }

  List<Widget> _getSuggestions(SearchController searchController) {
    if (tournaments.isEmpty) return [];
    var filteredTournaments = tournaments
        .where(
          (tournament) => tournament.display
              .toLowerCase()
              .contains(searchController.text.toLowerCase()),
        )
        .toList();
    List<Widget> suggestions = [
      ...filteredTournaments.map((tournament) {
        return ListTile(
          title: Text(tournament.display),
          onTap: () {
            Navigator.pop(context);

            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventPage(
                    tournament: tournament,
                  ),
                ));
          },
        );
      })
    ];
    return suggestions;
  }
}
