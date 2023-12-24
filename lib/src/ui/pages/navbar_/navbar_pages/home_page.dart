import 'package:flutter/material.dart';
import 'package:futzone/src/ui/screens/home_screens/league_and_matches.dart';
import 'package:futzone/src/ui/screens/home_screens/search_screen.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void showData() {
    showDatePicker(
      context: context,
      firstDate: DateTime(2010),
      lastDate: DateTime(2030),
      initialDate: DateTime.now(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: const Text(
            'FutZone',
            style: TextStyle(
              fontSize: 19,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchScreen(),
                  ),
                );
              },
              icon: const Icon(
                Icons.search,
                size: 24,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                showData();
              },
              icon: const Icon(
                Icons.calendar_today_outlined,
                size: 20,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                size: 24,
                color: Colors.grey,
              ),
            ),
          ],
          bottom: const TabBar(
            dividerColor: Colors.transparent,
            indicatorColor: Colors.transparent,
            labelColor: Colors.deepOrange,
            unselectedLabelColor: Colors.white24,
            tabs: [
              Tab(
                text: "All",
              ),
              Tab(
                text: 'LIVE',
              ),
              Tab(
                text: 'Upcoming',
              ),
              Tab(
                text: 'Finished',
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
          child: ListView(
            children: const [
              Matches(),
              Matches(),
              Matches(),
              Matches(),
              Matches(),
              Matches(),
              Matches(),
            ],
          ),
        ),
      ),
    );
  }
}
