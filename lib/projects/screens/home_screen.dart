import 'package:flutter/material.dart';
import 'package:flutter_introduce_myself/projects/screens/event_space_screens/event_space_screen.dart';
import 'package:flutter_introduce_myself/projects/screens/discount_store_screens/discount_store_screen.dart';
import 'package:flutter_introduce_myself/projects/screens/super_market_screens/super_market_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'drug_store_screens/drug_store_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget>? _pages;
  int _currentindex = 0;

  @override
  void initState() {
    _pages = [
      DiscountStoreScreen(),
      DrugStoreScreen(),
      EventSpaceScreen(),
      SuperMarketScreen(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages?[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentindex,
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.home),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'お気に入り'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'お知らせ'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'アカウント'),
        ],
      ),
    );
  }
}
