
import 'package:flutter/material.dart';
import 'package:tuters/secren/costom/chosePage.dart';
import 'package:tuters/secren/homepage.dart';

import '../Data/pupblicData.dart';

class SplashPage extends StatefulWidget {
  // const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPage();
}

class _SplashPage extends State<SplashPage>
    with SingleTickerProviderStateMixin{
  @override
  void FuterDlay() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (_) =>  chosePage()));
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
