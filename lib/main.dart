
import 'package:flutter/material.dart';

import 'API/Conaction/GetFromApi/Rstorent git info.dart';
import 'Data/productData.dart';
import 'Data/pupblicData.dart';
import 'secren/InitPages/splash.dart';
import 'secren/NavBarPage/Home/product/CategoreBar.dart';

void main() {


  runApp(MaterialApp(
      home: SplashPage()
      // home: testing())
  ));
}

// CustomScrollView



//شتغلت عليه يومين وعبالي التسلسم السبوع الجاي فكلت خل اسويه كوستم جان اتفاجة التسلم اليوم فهذه شغل اليوم ملحتك اسوي شي
class testing extends StatefulWidget {
  const testing({Key? key}) : super(key: key);

  @override
  State<testing> createState() => _testingState();
}

class _testingState extends State<testing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.amber,
            height: 500,child: CategoryTab()),
      ),
    );
  }
}
