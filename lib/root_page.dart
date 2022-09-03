import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:inha_notice_igrus/notice_page.dart';
import 'package:inha_notice_igrus/trend_page.dart';
import 'like_page.dart';

import 'package:google_nav_bar/google_nav_bar.dart';


class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    TagsPage(),
    TrendPage(),
    LikePage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: GNav(
            backgroundColor: Colors.white ,
            tabBackgroundColor: Colors.grey,
            gap: 8,
            onTabChange: (index) {
              _navigateBottomBar(index);
            },
            padding: EdgeInsets.all(8),
            tabs: [
              GButton(icon: Icons.home,
              text: 'Home'),
              GButton(icon: Icons.tag,
              text: 'Tags',),
              GButton(icon: Icons.trending_up,
              text: 'trend'),
              GButton(icon: Icons.favorite,
              text: 'like',),
            ],
          ),
        ),
      ),
    );
  }
}
