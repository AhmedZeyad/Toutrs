
import 'package:flutter/material.dart';
import 'package:tuters/Data/pupblicData.dart';

List RestDT = [
  "30-40",
  "50-59",
  "30,40",
];
//I = image

// idComment not active

Map<double, Row> UserStar = {
  1.0: Row(
    children: [UstarF()],
  ),
  3.5: Row(
    children: [
      UstarF(),
      UstarF(),
      UstarF(),
      ustarm(),
      ustaro(),
    ],
  ),
  4.5: Row(
    children: [
      UstarF(),
      UstarF(),
      UstarF(),
      UstarF(),
      ustarm(),
    ],
  ),
};
//com= comment
List<String> discrabtion = [
  "the best food",
  "you can find any thing here",
  "the speciation food in iraq",
];
List numbesTating = [
  199,
  150,
  50,
];
List discountList = [
  "10%",
  "30%",
  "5%",
];





//this is for testeing  iwork on it 2 dayes
List PageTab = ["farstPage", "secondPage", "TherdPage", 'forthpage',"secondPage","secondPage"];
List<String> farstPage = ['asfds'];
List<String> secondPage = ["fasd", "ahmed", 'asfds'];
List<String> TherdPage = ["fasd", "ahmed", ];
List<String> forthpage = ["ahmed", "fsfsdf", 'ahmed',"fffff"];
Map<String, List<String>> categore = {
  "farstPage": farstPage,
  "secondPage": secondPage,
  "TherdPage": TherdPage,
  "forthpage": forthpage,
};
Column Myprod(int index) {List <Widget> oll =[];
var mymy=PageTab.toList();
// print(mymy[index]);
// print(mymy);
var a=mymy[index];
var uu=categore[a];
// print(uu);
  for(int i =0;i<uu!.length;i++){
    oll.add(Column(children: [
      ListTile(
        leading: Image.network(
            "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chorizo-mozarella-gnocchi-bake-cropped-9ab73a3.jpg?quality=90&resize=768,574"
        ),
        title: Text("prod name"),
        subtitle: Text("prodeuct discraption 200 word"),
      ),
      Text(
        "price",
        style: TextStyle(fontSize: 16),
      ),
    ],)

    );
// print(index);
  };


  return Column(
    children:oll


  );
}

mysiplt(Map<String, List<String>> mycategore) {
  var mycategorekey = mycategore.keys;
  var mycategoreval = mycategore.values.toList();
  // print(mycategoreval.length);
  // print(mycategorekey);

  for (int i = 0; i < mycategoreval.length; i++) {
    print(i);

    // print(mycategoreval);
    print(mycategoreval[i]);

    var inishel = mycategoreval[i].length;
    for (int j = 0; j < inishel; j++) {
      print(mycategoreval[i][j]);
    }
  }
  // print(mycategorekey);
  // print(mycategoreval);
}
