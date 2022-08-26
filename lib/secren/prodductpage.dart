import 'package:flutter/material.dart';

import '../Data/pupblicData.dart';

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

  PrductPage(
      {required this.image,
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
      required this.StarsN});

  @override
  State<PrductPage> createState() => _PrductPageState();
}

class _PrductPageState extends State<PrductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: (DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(widget.image)))),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              bottom: -10,
                              right: 40,
                              child:
                              Container(
                                padding: EdgeInsets.all(8),
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: longWordc(), blurRadius: 10,spreadRadius: 3
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Center(child: Column(
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
                                right: 150, top: 10, child: FavartIcon()),
                            Positioned(right: 80, top: 10, child: ShearIcon()),
                            Positioned(right: 10, top: 10, child: SearchIcon()),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.name,
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              widget.discrabtion,
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black38),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                  size: 30,
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
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
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

  Container FavartIcon() {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.white),
      child: GestureDetector(
          onTap: () {
            print("object");
          },
          child: Icon(
            Icons.favorite_border,
            color: Colors.black,
          )),
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
}
