import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: const SizedBox(),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.close,
                size: 24,
                color: Colors.grey,
              ),
            ),
          ],
          title: Container(
            width: 266,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(16),
            ),
            child: TextField(
              controller: controller,
              style: const TextStyle(
                color: Colors.white
              ),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search,color: Colors.grey,size: 16,),
                contentPadding: const EdgeInsets.only(left: 8,bottom: 16),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.cancel,size: 16,color: Colors.grey,),
                   onPressed: () {
                    controller.clear();
                   },),
                border: InputBorder.none
              ),
            ),
          ),
          bottom: const TabBar(
            labelPadding: EdgeInsets.only(left: 3),
            indicatorColor: Colors.deepOrange,
            labelColor: Colors.deepOrange,
            unselectedLabelColor: Colors.grey,
            dividerColor: Colors.transparent,
              tabs: [
            Tab(
              text: "All",
            ),
            Tab(
              text: "Matches",
            ),
            Tab(
              text: "Leagues",
            ),
            Tab(
              text: "Players",
            ),
            Tab(
              text: "Teams",
            ),

          ]),
        ),
      ),
    );
  }
}
