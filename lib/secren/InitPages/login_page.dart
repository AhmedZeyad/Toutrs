import 'package:flutter/material.dart';
import 'package:tuters/API/Models/login/Userinfo.dart';
import 'package:tuters/Data/pupblicData.dart';
import 'package:tuters/costom/chosePage.dart';

import '../../API/Conaction/GetFromApi/get_userinfo.dart';
import '../../API/Conaction/GetFromApi/login.dart';
import '../../API/Conaction/SendToApi/singup.dart';
import '../../API/Models/login/check.dart';
import '../../Data/pupblicWidge.dart';
import '../NavBarPage/Home/homepage.dart';

List<UserInfo>? user;
// getiuser
class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
List<Checkpass>? pass;
  bool changeto = false;
  bool loding = false;
  final _EmailController = TextEditingController();
  final _phonController = TextEditingController();
  final _PaslController = TextEditingController();
  final _NameController = TextEditingController();
  bool resposchech = false;
  String eroor = "";
  info( )async{
  user=await getiuser().usergeter(_EmailController.text);

  print(user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: allres != null ? backbuton(context) : null,
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 40,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: ListView(
                  children: [
          Center(
              child: Text(
            eroor,
            style: TextStyle(fontSize: 30, color: Colors.red),
          )),
          Row(
            children: [
              Text(
                "Enter your infomation",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          if (changeto != false)
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: TextFormField(
                controller: _NameController,
                cursorColor: mainColoe(),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Name",
                  hintStyle: TextStyle(color: Colors.black54),
                  filled: true,
                ),
              ),
            ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: TextFormField(
              controller: _EmailController,
              cursorColor: mainColoe(),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "Email",
                hintStyle: TextStyle(color: Colors.black54),
                filled: true,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: TextFormField(
              controller: _PaslController,
              cursorColor: mainColoe(),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "password",
                hintStyle: TextStyle(color: Colors.black54),
                filled: true,
              ),
            ),
          ),
          if (changeto != false)
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15)),
              height: 60,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Container(
                            child: Image(
                                height: 40,
                                fit: BoxFit.cover,
                                image: AssetImage('images/iraq.png'))),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.arrow_drop_down_outlined),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child:
                              Text("+964", style: TextStyle(fontSize: 16)),
                        ),
                      ],
                    ),
                    Expanded(
flex: 1,
                      child: TextFormField(
                        maxLength: 10,
                        controller: _phonController,
                        cursorColor: mainColoe(),
                        decoration: InputDecoration(
                          counterText: "",
                          border: InputBorder.none,
                          hintText: "Phon Number",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      if (changeto == true) {
                        changeto = false;
                      } else {
                        changeto = true;
                      }
                    });
                  },
                  child: Text(
                    changeto != true
                        ? " Don't Have Account?"
                        : "I Have account!!",
                    style: TextStyle(color: mainColoe(), fontSize: 16),
                  ))
            ],
          ),
          if (loding == true)
            Column(
              children: [
                CircularProgressIndicator(color: mainColoe()),
              ],
            ),
          if (changeto == true)
            Container(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: mainColoe(),
                ),

                onPressed: () async {
                  Future<int> anser;
                  if (loding == true) {
                    loding = false;
                  } else if (loding == false && eroor == "") {
                    loding = true;
                  }

                  if (_EmailController.text.isNotEmpty &&
                      _NameController.text.isNotEmpty &&
                      _PaslController.text.isNotEmpty &&
                      _phonController.text.isNotEmpty)
                  {
                    anser =  SingUp(
                        _NameController.text,
                        _EmailController.text,
                        _PaslController.text,
                        _PaslController.text);
                    if (anser != null) {

                      setState(() {
                        info();
                        indexPage=0;
                        resposchech = true;
                      });
 Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (_) => chosePage()),
                              (roue) => false);

                    }
                  }
                  else {
                    eroor = "شدسوي رحمة لدينك";
                  }

                  setState(() {

                  });
                },
                child: Text(
                  "Sing Up",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onLongPress: () {

                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => chosePage()));
                },
              ),
            ),
          //loging
          if (changeto == false)
            Container(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: mainColoe(),
                ),
               onPressed: () async {
                  print(_EmailController.text);
                  pass = await checkpass().get_pass(_EmailController.text);
                  if (pass != null) {
                    if (pass?[0].password == _PaslController.text) {
                      setState(() {
                        info();
                        user;
                        indexPage=0;
                      });
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => chosePage()));
                    }
                    setState(() {
                      resposchech = true;
                    });
                  } else {

                    print(pass?[0].password);
                  }
                },
                child: Text(
                  "loging",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onLongPress: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => chosePage()));
                },
              ),
            ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
