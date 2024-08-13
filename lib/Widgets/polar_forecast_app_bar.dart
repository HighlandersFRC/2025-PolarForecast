import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../api_service.dart';

class PolarForecastAppBar extends StatefulWidget
    implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const PolarForecastAppBar({super.key})
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
      this.tournaments = tournaments;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      title: Row(
        children: [
          Image.asset(
            'assets/PolarBearHead.png',
            height: 80,
            width: 80,
          ),
          const Text(
            'Polar Pathing',
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontFamily: 'OpenSans'),
          )
        ],
      ),
      actions: [
        IconButton(icon: Icon(Icons.search), onPressed: () {
          _openSearch();
        },)
      ],
      backgroundColor: theme.primaryColor,
    );
  }

  _openSearch() {
    showModalBottomSheet(
      context: context,
      builder: (context) => SearchAnchor.bar(
        suggestionsBuilder: (context, searchController) => _getSuggestions(searchController),
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
            // Handle selection of tournament
          },
        );
      })
    ];
    return suggestions;
  }
}
