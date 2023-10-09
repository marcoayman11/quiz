import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/provider/myprovider.dart';
import 'package:quiz/styles/theme.dart';

import 'screens/home/homescreen.dart';
import 'screens/secound screen/secondhomescreen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create:(context) => MyProvider() ,
      child: MyApplication()));
}
class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Second_Homescreen.nameroute,
          routes: {Home_Screen.nameroute: (context) => Home_Screen(),
            Second_Homescreen.nameroute:(context)=>Second_Homescreen()
          },
        theme: AppTheme.lightTheme,
      );
  }

}
