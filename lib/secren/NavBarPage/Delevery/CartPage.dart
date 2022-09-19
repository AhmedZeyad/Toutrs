import 'package:flutter/material.dart';
import 'package:tuters/Data/pupblicData.dart';

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 2,
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            backgroundColor: Colors.white,
            bottom: TabBar(

                labelColor: mainColoe(),
                labelStyle: TextStyle(color: mainColoe(),fontSize: 20),
              unselectedLabelColor: longWordc(),
                indicatorColor: mainColoe(),
                tabs: [
                  Tab(
                    text: "Past Orfers",
                  ),
                  Tab(
                    text: "Upcoming",
                  ),


                ]),
          ),
          body: TabBarView(
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Center(
                    child: Text("You don have any post orders!",style: TextStyle(fontSize: 20),),
                  )
                ],
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text("No upcoming orders",style: TextStyle(fontSize: 20),),
                  )
,                ],
              ),


            ],
          )),
    );
  }
}
