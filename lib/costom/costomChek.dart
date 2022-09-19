import 'package:flutter/material.dart';
import 'package:tuters/API/Conaction/GetFromApi/Rstorent%20git%20info.dart';
import 'package:tuters/API/Models/RestorentModles/MY_RestorentInfo.dart';
import 'package:tuters/Data/pupblicData.dart';

class MyChekButton extends StatefulWidget {

final String title;
MyChekButton({
  required this.title
});

  @override
  State<MyChekButton> createState() => _ChekButtonState();
}
class _ChekButtonState extends State<MyChekButton> {
  bool check=false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      activeColor: mainColoe(),
        title: Text(widget.title),
        value:check ,
        onChanged:(Newval){
        setState(() {
 check=Newval!;
        });
        },

    );
  }
}
