import 'package:flutter/material.dart';
import 'package:tuters/Data/tgrba.dart';

import 'pupblicData.dart';







List foodType=[
  "burger",
  "burger",
  "pizza",
  "vigen",

];

List deleveryTime=[
  "35-40",
  "40-45",
  "40-45",
  "25-30",
];
List totalStars=[
  "4.0",
  "5.0",
  "5.0",
  "2.5",
];
// ###################################

List RestS=[
  4.0,
  5.0,
  5.0,
2.5,
];
Map<double,Row> StarsNu={
  2.5:Row(
    children: [
      starF(),
      starF(),
      starm(),
      staro(),
      staro(),

    ],
  ),
  4:Row(children: [
    starF(),
    starF(),
    starF(),
    starF(),
    staro(),


  ],),
  5:Row(children: [
    starF(),
    starF(),
    starF(),
    starF(),
    starF(),

  ],),
};
List TypeI  =[
  "images/ic1.png",
  "images/ic2.png",
  "images/ic3.png",
  "images/ic4.png",
  "images/ic5.png",
  "images/ic6.png",

];
List TypeN  =[
  "food",
  "Fresh",
  "stor",
  "Market",
  "butker",
  "add mony",
];

List discount=[
  "10%",
  "23%",
  "23%",
  "33%",
];
List tutePeople=[
  44,
  190,
  190,
  300,
];
