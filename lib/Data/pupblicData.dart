import 'package:flutter/material.dart';

Color mainColoe() {
  return Color(0xff03b191);
}

Color longWordc() {
  return Colors.black38;
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
];
List<double> commentRating = [
  4.5,
  3.5,
  1.0,
];
