import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:provider/provider.dart';
import 'package:quiz/provider/myprovider.dart';
import 'package:quiz/tabbarview/alltype.dart';
import 'package:quiz/tabbarview/fullbody.dart';
import 'package:quiz/tabbarview/lower.dart';
import 'package:quiz/tabbarview/upper.dart';
class TapOnesecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    int index=0;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset("assets/images/Ellipse 10.png"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello, Jade",style: TextStyle(
                      fontSize:16 ,
                      fontWeight: FontWeight.w400
                    ),),
                    Text("Ready to workout?",style: TextStyle(
                        fontSize:18 ,
                        fontWeight: FontWeight.w600
                    ),)
                  ],
                ),
              ),
              Spacer(),
              badges.Badge(
                badgeContent: Text('.',style:TextStyle(
                  fontWeight: FontWeight.bold,
                )),
                child: Icon(Icons.notifications,size: 35,),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/Frame1.png"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Workout Programs",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20),),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DefaultTabController(
            length: 4,
            child: TabBar(
                onTap: (value){
                  provider.bottomNavigationBar();
                },
                isScrollable:true,
                tabs: [
                  Tab(
                    child: Text("All Type",style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF363F72),
                        fontSize: 16),),
                  ),
                  Tab(
                    child: Text("Full Body",style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF363F72),
                        fontSize: 16),),
                  ),
                  Tab(
                    child: Text("Upper",style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF363F72),
                        fontSize: 16),),
                  ),
                  Tab(
                    child: Text("Lower",style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF363F72),
                        fontSize: 16),),
                  ),
                ]),
          ),
        ),
        cardEx("7 days","Morning Yoga",
            "Improve mental focus","assets/images/yoga1.png"),
        cardEx("3 days","Plank Exercise","Improve posture and stability.",
          "assets/images/pngwing 1.png"
        ),

      ],

    );
  }
  Widget cardEx(String numofday,String text1,
      String text2,String pathimage){
    return
      Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
                color: Color(0XFFEAECF5),
                borderRadius: BorderRadius.circular(12)
            ),
            child:Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 5,
                          color: Colors.white,
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: Colors.transparent)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(numofday,style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                            ),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(text1,style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(text2,style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.schedule),
                            Text("30 mins",style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400
                            ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Image.asset(pathimage),
                    ],
                  )
                ] ),
          )
      );

  }
}