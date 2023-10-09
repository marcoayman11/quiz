import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/provider/myprovider.dart';
import 'package:quiz/styles/theme.dart';
import 'package:quiz/taps/tapfour.dart';
import 'package:quiz/taps/tapone.dart';
import 'package:quiz/taps/taponesecond.dart';
import 'package:quiz/taps/tapthree.dart';
import 'package:quiz/taps/taptwo.dart';
class Second_Homescreen extends StatelessWidget {
  static const String nameroute = "homesecond";
  int index = 0;
  List<Widget> tabs = [
    TapOnesecond(),
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
                icon: Icon(Icons.navigation_outlined)
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.stacked_bar_chart)
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