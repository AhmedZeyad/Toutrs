import 'package:flutter/material.dart';
import 'package:tuters/secren/homepage.dart';
import 'package:tuters/secren/product/CategoreBar.dart';
import 'package:tuters/secren/product/ListOfCategore.dart';
import 'package:tuters/secren/task.dart';

import '../../../Data/pupblicData.dart';
// import 'task.dart';

class PrductPage extends StatefulWidget {
  final String image;
  final String name;
  final String comment;
  final double stars;
  final String deleverTime;
  final double UserStar;
  final String CommentName;
  final Map Rating;
  final String discrabtion;
  final int NumRating;
  final String discount;
  final Map<double, Row> StarsN;

  PrductPage({
    required this.image,
    required this.name,
    required this.comment,
    required this.stars,
    required this.deleverTime,
    required this.UserStar,
    required this.CommentName,
    required this.Rating,
    required this.NumRating,
    required this.discount,
    required this.discrabtion,
    required this.StarsN,
  });

  Color a = Colors.black;

  @override
  State<PrductPage> createState() => _PrductPageState();
}

class _PrductPageState extends State<PrductPage> {
  bool chech = false;

  // TabController _controller =TabController(vsync: ,length: 4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                scrollDirection: Axis.vertical,
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate([
                      restorentHome(context),
                      restorentInfo(),
                      restorentOffers(),
                      Container(height: 100,width: 50,child: CategoryTab()),

                      // SliverToBoxAdapter(
                      //     child:
                      //     CatagoresRestorent(),
                      //
                      // )
                    ]),
                  ),

                  // Container(
                  //   child: TabBar(
                  //
                  //     tabs: [
                  //       Tab(
                  //         icon: Icon(Icons.abc),
                  //       ),
                  //       Tab(
                  //         icon: Icon(Icons.abc),
                  //       ),
                  //       Tab(
                  //         icon: Icon(Icons.abc),
                  //       ),
                  //       Tab(
                  //         icon: Icon(Icons.abc),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //   child: TabBarView(
                  //     children: [
                  //     Text("data"),
                  //     Text("data"),
                  //     Text("data"),
                  //     Text("data"),
                  //   ],),
                  // )
                  // TabBarView(children: children)
                ],
              ),
            )
            ,

          ],
        ),
      ),
    );
  }

  Column restorentOffers() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Populer",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>taskpage(image: widget.image,)));
          },
          child: Container(
            height: 250,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, int index) {
                  return Populer();
                }),
          ),
        ),
      ],
    );
  }

  Container restorentInfo() {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.name,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            widget.discrabtion,
            style: TextStyle(fontSize: 16, color: Colors.black38),
            maxLines: 1,
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blueAccent.withOpacity(0.2),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.loupe,
                        color: Colors.blueAccent,
                      ),
                      Text(
                        "اكسب نقاط",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )
                    ],
                  )),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.redAccent.withOpacity(0.2),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.loupe,
                        color: Colors.redAccent,
                      ),
                      Text(
                        " خصم ${widget.discount}",
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )
                    ],
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.stars.toString(),
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stars(widget.stars),
                      Text(
                        "Besed on ${widget.NumRating} ratings",
                        style: TextStyle(
                            color: longWordc(),
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios_sharp,
                color: mainColoe(),
                size: 25,
              )
            ],
          ),
          Divider(
            height: 15,
            color: longWordc(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // idComment

                  Text(
                    widget.CommentName,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  UserStars(widget.UserStar)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Container(
                      child: Text(
                        widget.comment,
                        style: TextStyle(
                          fontSize: 18,
                          color: longWordc(),
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            height: 15,
            color: longWordc(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.rate_review_outlined,
                    size: 25,
                    color: mainColoe(),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "write review",
                    style: TextStyle(fontSize: 17, color: mainColoe()),
                  ),
                ],
              ),
              UserStars(5),
            ],
          ),
        ],
      ),
    );
  }

  Container restorentHome(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: (DecorationImage(
              fit: BoxFit.cover, image: AssetImage(widget.image)))),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: -10,
            right: 40,
            child: Container(
              padding: EdgeInsets.all(8),
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: longWordc(), blurRadius: 10, spreadRadius: 3)
                ],
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Center(
                  child: Column(
                children: [
                  Text(widget.deleverTime),
                  Text("mint"),
                ],
              )),
            ),
          ),
          Positioned(left: 10, top: 10, child: backbuton()),
          Positioned(left: 10, top: 10, child: backbuton()),
          Positioned(
              right: 150,
              top: 10,
              child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: LikeButton(
                    unactive: Colors.black,
                  ))),
          Positioned(right: 80, top: 10, child: ShearIcon()),
          Positioned(right: 10, top: 10, child: SearchIcon()),
        ],
      ),
    );
  }

  Container Stars(double stars) {
    return Container(
      child: widget.StarsN[stars],
    );
  }

  Container UserStars(double uersStar) {
    return Container(
      child: widget.Rating[uersStar],
    );
  }

  Container backbuton() {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.white),
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
    );
  }

  Container ShearIcon() {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.white),
      child: Icon(
        Icons.share_outlined,
        color: Colors.black,
      ),
    );
  }

  Container SearchIcon() {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.white),
      child: Icon(
        Icons.search,
        color: Colors.black,
      ),
    );
  }

  Container Populer() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(widget.image)),
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber),
          ),
          Text(
            "ahmedahmedahmed ahmd",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "IQD 5,000",
            style: TextStyle(color: mainColoe()),
          ),
        ],
      ),
    );
  }
}




// Container(
//
// height: 20,
// child:
// TabBar(controller:_tabController,
// tabs: [
// Tab(child: Text("fsdfdsfsf"),),
// Tab(child: Text("fsdfdsfsf"),),
// Tab(child: Text("fsdfdsfsf"),),
// ],),
// ),
// SizedBox(height: 20,),
// Container(
// height: 20,
// width: 20,
// child: TabBarView(controller: _tabController,
// children: [
// Container(
// height: 20,
// width: 20,
// child: Icon(Icons.abc)),
// Container(
// height: 20,
// width: 20,
// child: Icon(Icons.abc)),
// Container(
// height: 20,
// width: 20,
// child: Icon(Icons.abc)),
// ],
// )),
// class CatagoresRestorent extends StatefulWidget {
//   @override
//   State<CatagoresRestorent> createState() => _CatagoresRestorentState();
// }
//
// class _CatagoresRestorentState extends State<CatagoresRestorent> {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: List.generate(
//           4,
//           (index) => tab("title", index + 12),
//         ),
//
//         //
//       ),
//     );
//   }
// }
//
// Container tab(String title, double fontSize,
//     {Color textColor = Colors.black, Color backroindColor = Colors.white}) {
//   return Container(
//     decoration: BoxDecoration(color: backroindColor),
//     child: (Text(
//       title,
//       style: TextStyle(fontSize: fontSize, color: textColor),
//     )),
//   );
// }
