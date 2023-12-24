import 'package:flutter/material.dart';
import 'package:futzone/src/ui/screens/matches/matches.dart';

class Matches extends StatefulWidget {
  const Matches({super.key});

  @override
  State<Matches> createState() => _MatchesState();
}

class _MatchesState extends State<Matches> {
  bool starButton = true;

  void starTapped() {
    setState(() {
      starButton = !starButton;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15, top: 8),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 3),
            child: const Row(
              children: [
                Image(
                  image: AssetImage('assets/images/apl.png'),
                  height: 35,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Premier League",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Image(
                  image: AssetImage('assets/images/england.png'),
                  height: 16,
                  width: 16,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "England",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white54),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StatsPage(),
                ),
              );
            },
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    color: Colors.white24,
                  ),
                  child: const Column(
                    children: [
                      Text(
                        '21:00',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'FT',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Colors.white12,
                  ),
                  child: Row(
                    children: [
                      const Column(
                        children: [
                          Image(
                            image: AssetImage('assets/images/liverpool.png'),
                            height: 22,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Image(
                            image: AssetImage('assets/images/astonvilla.png'),
                            height: 22,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Column(
                        children: [
                          Text(
                            'Liverpool',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Aston Villa',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 120,
                      ),
                      const Column(
                        children: [
                          Text(
                            '3',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '1',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      IconButton(
                        onPressed: () {
                          starTapped();
                        },
                        icon: Icon(
                          Icons.star,
                          color:
                              starButton ? Colors.white24 : Colors.deepOrange,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
