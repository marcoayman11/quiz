import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/provider/myprovider.dart';
import 'package:quiz/styles/theme.dart';
import 'package:quiz/taps/tapfour.dart';
import 'package:quiz/taps/tapone.dart';
import 'package:quiz/taps/tapthree.dart';
import 'package:quiz/taps/taptwo.dart';

class Home_Screen extends StatelessWidget {
  static const String nameroute = "home";
  int index = 0;
  List<Widget> tabs = [
    TapOne(),
    TapTwo(),
    TapThree(),
    TapFour(),
  ];
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            index = value;
            provider.bottomNavigationBar();
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home)
                ,label: ""
            ),
            BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.view_cozy_outlined)
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.calendar_month)
                ,label: ""
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.person)
                    ,label: ""
            )
          ],
        ),
        body: tabs[index],
      ),
    );
  }
}
