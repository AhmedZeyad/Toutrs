import 'package:flutter/material.dart';
import 'package:tuters/secren/NavBarPage/Delevery/CartPage.dart';
import 'package:tuters/secren/NavBarPage/Serch/SearchPage.dart';
import 'package:tuters/secren/NavBarPage/Account/acountPage.dart';
import 'package:tuters/secren/NavBarPage/Home/homepage.dart';

Color mainColoe() {
  return Color(0xff03b191);
}

Color SecondColor(){
  return Colors.black12.withOpacity(0.03);

}
Color longWordc() {
  return Colors.black38;
}
Text Mone(int mone){
  return Text("IQD $mone",style: TextStyle(fontSize: 17,color: mainColoe()),);
}
Text  SubTitle(String text){
  return Text(text,
      style: TextStyle(fontSize: 17,color: Colors.black)
    ,);
}
Text  UserName(String text){
  return Text(text,
      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black)
    ,);
}
Text  RedSubTitle(String text){
  return Text(text,
      style: TextStyle(fontSize: 17,color: Colors.red)
    ,);
}
Text  mainSubTitle(String text){
  return Text(text,
      style: TextStyle(fontSize: 17,color: mainColoe())
    ,);
}
//f= full

Icon starF({double size = 30}) {
  return Icon(
    Icons.star_rounded,
    color: mainColoe(),
    size: size,
  );
//o outline
}

Icon staro({double size = 30}) {
  return Icon(
    Icons.star_rounded,
    color: Colors.black12,
    size: size,
  );
}

//m متوسط
Icon starm({double size = 30}) {
  return Icon(
    Icons.star_half_outlined,
    color: mainColoe(),
    size: size,
  );
}

//u =user
Icon UstarF({double usize = 20}) {
  return Icon(
    Icons.star_rounded,
    color: mainColoe(),
    size: usize,
  );
}

Icon ustaro({double usize = 20}) {
  return Icon(
    Icons.star_rounded,
    color: Colors.black12,
    size: usize,
  );
}

Icon ustarm({double usize = 20}) {
  return Icon(
    Icons.star_half_outlined,
    color: mainColoe(),
    size: usize,
  );
}

String commentName = "Ahmed";
List RestCom = [
  "يخبل شنو هاي فد شي راقي ارفع له القبعة رهيب الله يخبل يموتتتتت بس دريد اراويكم  التحكم بالخط شون حيصير نقاط بلاخير   ",
  "الطعم الرهيب عمي",
  "عمي غالين وااكل بارد ",
  "الطعم الرهيب عمي",

];
List<double> commentRating = [
  4.5,
  3.5,
  1.0,
];
List  Pages=[
  homepage(),
  search(),
  cart(),
  acount(),
];
String  null_image= "https://play-lh.googleusercontent.com/i67ij_F7t8n4DzDKYqj5srwgcdkg5xjvx6nDaaqzgy2aMf0VfqZOpIgbRaYTg6JhMPfM;";
