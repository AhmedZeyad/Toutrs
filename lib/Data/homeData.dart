import 'package:flutter/material.dart';
import 'package:tuters/Data/tgrba.dart';

import 'pupblicData.dart';





//post

List image = [
  "images/post/burger.jpeg",
  "images/post/pizza.jpeg",
  "images/post/vegen.jpeg",
];
List Restorent=[
  "Fier Fier Al Saydiya",
  "volcano",
"Eat&Go",
];
List foodType=[
  "burger",
  "pizza",
  "vigen",

];
List deleveryTime=[
  "35-40",
  "40-45",
  "25-30",
];
List totalStars=[
  "4.0",
  "5.0",
  "2.5",
];
// ###################################

List RestS=[
  4.0,
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
// ###################################
List Offring=[
  "images/of1.jpeg",
  "images/of2.png",
  "images/of3.jpeg",
];
List TypeI  =[
  "images/ic1.png",
  "images/ic2.png",
  "images/ic3.png",
  "images/ic4.png",
  "images/ic5.png",
  "images/ic6.png",

];
List TypeN  =[
  "مطاعم",
  "توترز فريش",
  "البقالة",
  "متجر",
  "المندوب",
  "اضف رصيد",
];
Map<double, Row> UserStars = {
  1.0: Row(
    children: [
      UstarF()
    ],
  ),
  3.5: Row(children: [
    UstarF(),
    UstarF(),
    UstarF(),
    ustarm(),
    ustaro(),

  ],),

  4.5: Row(children: [
    UstarF(),
    UstarF(),
    UstarF(),
    UstarF(),
    ustarm(),


  ],),
};
List Discrabtion=[
  "the beast food in the best place",
  "theat abo hamza",
  "mnwe ea wrd",

];
List discount=[
  "10%",
  "23%",
  "33%",
];
List tutePeople=[
  44,
  190,
  300,
];
List personalRestS=[
  4.4,
  5.0 ,
  4.9
];