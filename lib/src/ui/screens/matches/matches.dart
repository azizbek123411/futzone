import 'package:flutter/material.dart';
import 'package:futzone/src/ui/screens/matches/lineups.dart';
import 'package:futzone/src/ui/screens/matches/overview.dart';
import 'package:futzone/src/ui/screens/matches/stats.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({super.key});

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: const Column(
            children: [
              Text(
                'English Premier League',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              Text(
                'Sunday,3 September,2023',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.star,
                size: 20,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                size: 20,
                color: Colors.grey,
              ),
            ),
          ],
          backgroundColor: const Color(0xff2F283B),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.grey,
              size: 20,
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xff2F283B),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/images/liverpool.png', height: 60),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'Liverpool',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.star))
                    ],
                  ),
                  const Column(
                    children: [
                      Text(
                        'Full Time',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '3-0',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'HT 2-0',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/images/astonvilla.png', height: 60),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'Aston Villa',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.star))
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("Overview"),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Lineups"),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Stats"),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
