import 'package:flutter/material.dart';
import 'package:tuters/Data/homeData.dart';
import 'package:tuters/Data/pupblicData.dart';
import 'package:tuters/costom/costomSlider.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.search,
          color: Colors.black,
          size: 30,
        ),
        title: TextField(
          // autofocus: true,
          decoration: InputDecoration(
              border: InputBorder.none, hintText: "Search for store or item"),
        ),
      ),
      body: Column(children: [
        offer(),
        Expanded(
          child: ListView.builder(itemBuilder: ((context,int index){
            return               post(allmealsoffer?[index].image??null_image,index);

          }),
itemCount: (allmealsoffer?.length??2)-1,
          ),
        )
      ]),
    );
  }

  Container offer() {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: mainColoe(),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "images/ic1.png",
                    ))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "order Anything",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 6),
                height: 50,
                child: Text(
                  "order Anythingorder order \nAnything Anything",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
              margin: EdgeInsets.only(right: 5),
              child: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
              ))
        ],
      ),
    );
  }

  Container post(String myimage,int index) {
    return Container(
      margin: EdgeInsets.only(left: 10,top: 25,bottom: 35),

      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(right:5),
            height: 115,
            width: 205,
            decoration: BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(myimage))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                allmealsoffer?[index].resN??"null",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 6),
                height: 50,
                width:190,
                child: Text(
allmealsoffer?[index].caption??"null",                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              Text(
                "25 Stores",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: mainColoe()),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
