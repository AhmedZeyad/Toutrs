import 'package:flutter/material.dart';
import 'package:tuters/Data/pupblicData.dart';

class loging extends StatefulWidget {
  const loging({Key? key}) : super(key: key);

  @override
  State<loging> createState() => _logingState();
}

class _logingState extends State<loging> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black12,
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: Row(
                    children: [
                      Text(
                        "Enter your phone number",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  padding: EdgeInsets.all(10),
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black12)),
                  child: Row(
                    children: [
                      Container(
                          child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage('images/iraq.png'))),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_drop_down_outlined),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("+964", style: TextStyle(fontSize: 16)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "phone number",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        height: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black12),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                                child: Text(
                              "Continue",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          " Have Account and a new number",
                          style: TextStyle(color: mainColoe(), fontSize: 16),
                        ))
                  ],
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 400,
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                  "By continuing you agree to our T&Cs. Please check our  Privacy Policy to learn more.",
                    maxLines: 2,strutStyle: StrutStyle(fontSize: 20) ,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
