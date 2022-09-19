import 'package:flutter/material.dart';
import 'package:tuters/Data/homeData.dart';
import 'package:tuters/Data/pupblicData.dart';

class chosePage extends StatefulWidget {
  @override
  State<chosePage> createState() => _chosePageState();
}

var indexPage = 0;

class _chosePageState extends State<chosePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int indexss) {
            setState(() {
              indexPage = indexss;
              mainColoe();
            });
          },
          currentIndex: indexPage,

          unselectedLabelStyle: TextStyle(color:longWordc()),
          selectedLabelStyle: TextStyle(color: mainColoe()),
          unselectedItemColor: longWordc(),
          selectedItemColor: mainColoe(),
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 35,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 35,
              ),
              label: 'Searcch',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
                size: 35,
              ),
              label: 'orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_rounded,
                size: 35,
              ),
              label: 'Account',
            ),
          ],
        ),
        body: Pages[indexPage]);
  }
}
