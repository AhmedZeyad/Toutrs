import 'package:flutter/material.dart';
import 'package:tuters/Data/homeData.dart';
import 'package:tuters/Data/pupblicData.dart';
import 'package:tuters/secren/loginPage.dart';
import 'package:tuters/secren/prodductpage.dart';

import 'costom/costomSlider.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.filter_alt,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "توصيل الى",
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_drop_down_outlined,
                      color: Colors.black,
                    ),
                    Text(
                      "بغداد، العراق",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                GestureDetector(
                  onTap: (){print("login");
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>loging() ));},
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "! تسحيل الدخول باستخدام تطبيق توترز بمزاية حصرية",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.login,
                            color: Colors.green,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 220,
                  width: 400,
                  child: CostomSlider(Color(0x8C1B6BFF), Offring),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    type(
                      0,
                    ),
                    type(
                      1,
                    ),
                    type(
                      2,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    type(
                      3,
                    ),
                    type(
                      4,
                    ),
                    type(
                      5,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: 280,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      viwe(0),
                      viwe(1),
                      viwe(2),
                      viwe(1),
                    ],
                  ),
                ),
                Container(
                  height: 280,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      viwe(2),
                      viwe(0),
                      viwe(1),
                      viwe(1),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 19),
                  height: 280,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      viwe(1),
                      viwe(0),
                      viwe(2),
                      viwe(1),
                    ],
                  ),
                ),
                Container(
                  height: 280,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      viwe(1),
                      viwe(2),
                      viwe(0),
                      viwe(1),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container type(
    int index,
  ) {
    return Container(
      margin: EdgeInsets.all(9),
      height: 110,
      width: 120,
      decoration: BoxDecoration(
          color: Colors.black12, borderRadius: BorderRadius.circular(15)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                height: 70,
                width: 70,
                fit: BoxFit.cover,
                image: AssetImage(
                  TypeI[index],
                ),
              ),
              Text(
                TypeN[index],
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
            ],
          ),
        ],
      ),
    );
  }

  GestureDetector viwe(int index) {
    return GestureDetector(
      onTap: () {
        print("hiii");
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PrductPage(
                      image: image[index],
                      Rating: StarsNu,
                      deleverTime: deleveryTime[index],
                      discrabtion: Discrabtion[index],
                      comment: RestCom[index],
                      stars: RestS[index],
                      StarsN: StarsNu,
                      NumRating: tutePeople[index],
                      CommentName: commentName,
                      name: Restorent[index],
                      UserStar: RestS[index],
                      discount: discount[index],
                    )));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image[index],
                          )),
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)),
                  height: 180,
                  width: 350,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.favorite_border,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        right: 30,
                        bottom: -15,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: longWordc(),
                                  blurRadius: 10,
                                  spreadRadius: 3)
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Center(
                              child: Column(
                            children: [
                              Text(deleveryTime[index]),
                              Text("mint"),
                            ],
                          )),
                        ),

                        // Container(
                        //   height: 45,
                        //   width: 45,
                        //   decoration: BoxDecoration(
                        //       boxShadow: [
                        //         BoxShadow(
                        //             color: Colors.black,
                        //             blurRadius: 5,
                        //             spreadRadius: 1),
                        //       ],
                        //       color: Colors.white,
                        //       borderRadius: BorderRadius.circular(10)),
                        //   child: Column(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: [
                        //       Text(
                        //         deleveryTime[index],
                        //         style: TextStyle(fontSize: 12),
                        //       ),
                        //       Text(
                        //         "m",
                        //         style: TextStyle(fontSize: 12),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          Restorent[index],
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          " ${foodType[index]} .\$\$",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 12),
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blueAccent.withOpacity(0.3)),
                        child: Row(
                          children: [
                            Text(
                              "اكسب نقاط",
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.blueAccent,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(3),
                        margin: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              totalStars[index],
                              style: TextStyle(color: Colors.black),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
