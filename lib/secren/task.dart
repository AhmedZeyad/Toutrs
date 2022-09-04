import 'package:flutter/material.dart';
import 'package:tuters/Data/pupblicData.dart';

class taskpage extends StatefulWidget {
  String ahmed = "hii";
  final String image;

  taskpage({required this.image});

  bool check = false;
  int count = 0;

  @override
  State<taskpage> createState() => _taskpageState();
}

class _taskpageState extends State<taskpage> {
  bool check = true;

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(widget.image)),
                          color: Colors.black12),
                    ),
                    Row(
                      children: [
                        Text(
                          "classic beef burger",
                          style: TextStyle(fontSize: 25),
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 250,
                      child: Text(
                        "classic beef burger tot burger burger burger burger tat tet haaa heeee hm hmhmhmhmhmhmhmhmhmhmhmhmhh",
                        maxLines: 2,
                        style: TextStyle(
                          color: longWordc(),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "10,000 IQD",
                          style: TextStyle(color: mainColoe(), fontSize: 19),
                        )
                      ],
                    ),
                    Container(
                      height: 15,
                      color: longWordc(),
                    ),
                    CheckboxListTile(
                        title: Text("gdo"),
                        value: check,
                        onChanged: (val) {
                          setState((){
                            check = val!;

                          }) ;

                        }),
                    CheckboxListTile(
                        title: Text("bebe"),
                        value: check,
                        onChanged: (val) {
                          setState() {
                            check = val!;
                          }
                        }),
                    SizedBox(height: 100,),
                    Container(
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton(style: ElevatedButton.styleFrom(primary: mainColoe()),
                              onPressed: () {
                                setState((){
                                  count==0;
                                });
                                count += 1;
                              },
                              child: Icon(Icons.add)),
                          Text("$count"),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(primary: mainColoe()),
                              onPressed: (){setState((){
                            if (count>0)count--;
                          });},


                              child: Icon(Icons.minimize)),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
