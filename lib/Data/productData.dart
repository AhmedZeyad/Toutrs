// Rst =Restorent
//N = Name
import 'package:flutter/material.dart';
import 'package:tuters/Data/pupblicData.dart';

List RestN = [
  "volcano",
  "Fier Fier Al Saydiya",
  "Vaking",
];
List RestDT = [
  "30-40",
  "50-59",
  "30,40",
];
//I = image
List RestI = [
  "images/post/burger.jpeg",
  "images/post/vegen.jpeg",
  "images/post/pizza.jpeg",

]
;
// idComment not active


Map<double, Row> UserStar = {
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
//com= comment
List <String>discrabtion = [
  "the best food",
  "you can find any thing here",
  "the speciation food in iraq",

];
List numbesTating = [
  199,
  150,
  50,
];
List discountList=[
  "10%",
  "30%",
  "5%",
];