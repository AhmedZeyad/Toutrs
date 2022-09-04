import 'package:flutter/material.dart';
import 'package:tuters/Data/productData.dart';
import 'package:tuters/Data/pupblicData.dart';


class CategoryTab extends StatefulWidget {
  // final int index;
  // final int selcted;
  // var press;

  // CategoryTab({
  //   // required this.index,
  //   // required this.selcted,
  //   // this.press,
  // });

  @override
  State<CategoryTab> createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  int Selcted = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(scrollDirection: Axis.horizontal,itemCount: PageTab.length,
        itemBuilder: (context,int index){return
      GestureDetector(
        onTap: () {
          setState(() {
            Selcted = index;
          });
        }
        ,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [
              Text(
                PageTab[index],
                style: TextStyle(
                  fontSize: 17,
                  color: Selcted == index ? mainColoe() : Colors
                      .black45,
                ),
              ),
              if (Selcted == index)
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  height: 3,
                  width: 22,
                  color: mainColoe(),
                )
            ],
          ),
        ),
      );
    });
  }
}
