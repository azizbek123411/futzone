import 'package:flutter/material.dart';
import 'package:futzone/src/ui/pages/navbar_/navbar_pages/earning_page.dart';
import 'package:futzone/src/ui/pages/navbar_/navbar_pages/home_page.dart';
import 'package:futzone/src/ui/pages/navbar_/navbar_pages/refresh_page.dart';
import 'package:futzone/src/ui/pages/navbar_/navbar_pages/wallet-page.dart';
import 'package:futzone/src/ui/pages/navbar_/navbar_pages/watch_page.dart';

class NavMain extends StatefulWidget {
  const NavMain({super.key});

  @override
  State<NavMain> createState() => _NavMainState();
}

class _NavMainState extends State<NavMain> {
  int selectedIndex = 0;
  PageController controller = PageController();

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: PageView(
        onPageChanged: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        controller: controller,
        children: const [
          HomePage(),
          Watch(),
          Earnings(),
          Wallet(),
          Refresh(),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
        ),
        child: BottomNavigationBar(
          unselectedLabelStyle: const TextStyle(color: Colors.white24),
          currentIndex: selectedIndex,
          onTap: (int itemIndex) {
            setState(() {
              selectedIndex = itemIndex;
              controller.animateToPage(
                itemIndex,
                duration: const Duration(milliseconds: 300),
                curve: Curves.fastEaseInToSlowEaseOut,
              );
            });
          },
          selectedItemColor: const Color(0xffF87871),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Matches",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "Watchlist"),
            BottomNavigationBarItem(
                icon: Icon(Icons.attach_money_rounded), label: "Earnings"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet), label: "Wallet"),
            BottomNavigationBarItem(
                icon: Icon(Icons.refresh_rounded), label: "Refreshj"),
          ],
        ),
      ),
    );
  }
}
