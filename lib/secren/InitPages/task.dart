import 'package:flutter/material.dart';
import 'package:tuters/Data/pupblicData.dart';
import 'package:tuters/Data/pupblicWidge.dart';

import '../../costom/costomChek.dart';
import '../NavBarPage/Home/product/prodductpage.dart';

class ProductOrder extends StatefulWidget {
  int index;

  ProductOrder({
    required this.index,
  });

  @override
  State<ProductOrder> createState() => _ProductOrderState();
}

class _ProductOrderState extends State<ProductOrder> {
  bool check = true;
  var sumall = 1;
  int count = 1;

  @override
  Widget build(BuildContext context) {
    sumall = (allmeals?[widget.index].mealCost ?? 1) * count;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: [
                      Container(
                        child:Stack(children: [Positioned(child: backbuton(context))],) ,
                        height: MediaQuery.of(context).size.width ,
                        width: MediaQuery.of(context).size.width ,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    allmeals?[widget.index].mealImage ??
                                        null_image)),
                            color: Colors.black12),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(

                          children: [
                            Row(
                              children: [
                                Text(
                                  allmeals?[widget.index].mealName ?? "null",
                                  style: TextStyle(fontSize: 25),
                                )
                              ],
                            ),
                            Container(
                              height: 50,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    allmeals?[widget.index].mealCaption ?? "null",
                                    maxLines: 2,
                                    style: TextStyle(
                                      color: longWordc(),
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "${allmeals?[widget.index].mealCost ?? "nul"} IQD",
                                  style:
                                      TextStyle(color: mainColoe(), fontSize: 19),
                                )
                              ],
                            ),
                            Container(
                              height: 5,
                              color: longWordc(),
                            ),
                            MyChekButton(title: "worte"),
                            MyChekButton(title: "nife"),
                            MyChekButton(title: "spoon"),
                            MyChekButton(title: "aseer",),
                            MyChekButton(title: "sous",),
                            SizedBox(
                              height: 100,
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: mainColoe()),
                                        onPressed: () {
                                          setState(() {
                                            count == 0;
                                          });
                                          count += 1;
                                        },
                                        child: Icon(Icons.add)),
                                    Text("$count"),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: mainColoe()),
                                        onPressed: () {
                                          setState(() {
                                            if (count > 0) count--;
                                          });
                                        },
                                        child: Icon(Icons.minimize)),
                                  ],
                                ),
                                ElevatedButton(style: ElevatedButton.styleFrom(primary: mainColoe()),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(count > 1
                                            ? " ${count} items"
                                            : " ${count} item"),
                                        Text("Add to Cart",style: TextStyle(fontSize: 18),),
                                        Text(" ${sumall} IQD"),
                                      ],
                                    ))
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  String null_image =
      "classic beef burger tot burger burger burger burger tat tet haaa heeee hm hmhmhmhmhmhmhmhmhmhmhmhmhh";
}
