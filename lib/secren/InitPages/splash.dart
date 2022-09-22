
import 'package:flutter/material.dart';
import 'package:tuters/API/Conaction/GetFromApi/Rstorent%20git%20info.dart';
import 'package:tuters/API/Models/RestorentModles/MY_RestorentInfo.dart';
import 'package:tuters/secren/NavBarPage/Home/homepage.dart';

import '../../Data/pupblicData.dart';
import '../../costom/chosePage.dart';
import 'login_page.dart';

class SplashPage extends StatefulWidget {

  @override
  State<SplashPage> createState() => _SplashPage();
}

class _SplashPage extends State<SplashPage>
    with SingleTickerProviderStateMixin{
  @override
  void FuterDlay() {
    Future.delayed(Duration(seconds: 3), () {
      // Navigator.of(context).push(MaterialPageRoute(builder: (_) =>  login()));
      Navigator.of(context).push(MaterialPageRoute(builder: (_) =>  login()));
    });
  }

  void initState() {
    FuterDlay();

    super.initState();
  }
  @override
  void future() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColoe(),
      body: Center(
          child: Container(
            width: 500,
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "images/logo.jpeg",

                ),
              ),
            ),
          )),
    );
  }
  }


