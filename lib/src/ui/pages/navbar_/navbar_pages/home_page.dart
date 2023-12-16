import 'package:flutter/material.dart';
import 'package:futzone/src/ui/screens/league_and_matches.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.black54,
        leading: const Image(
          image: AssetImage('assets/images/lslogo.png'),
          width: 15,
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/footballremove.png'),
              height: 15,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Football',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              width: 30,
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 24,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
    );
  }
}
