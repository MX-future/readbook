import 'package:flutter/material.dart';
import 'package:readbook/views/phrase/phrase.dart';
import 'package:readbook/views/poem/poem.dart';
import 'package:readbook/views/solar_terms/solar_terms.dart';

class MyTabBar extends StatefulWidget {
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.07),
        child: SafeArea(
          top: true,
          child: Offstage(),
        ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          PoemPage(),
          PhrasePage(),
          SolarTermsPage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.collections_bookmark),
              title: Text('唐诗')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.import_contacts),
              title: Text('成语')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.grain),
              title: Text('节气')
          ),
        ],
      ),
    );
  }
}
