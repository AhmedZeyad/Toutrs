import 'package:flutter/material.dart';
import 'package:tuters/Data/pupblicData.dart';

class NotifacationButton extends StatelessWidget {
  const NotifacationButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (comment) => Notfication()));
        print("2");
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Icon(
          Icons.notifications_none_rounded,
          color: Colors.black45,
        ),
      ),
    );
  }
}

class Notfication extends StatefulWidget {
  const Notfication({Key? key}) : super(key: key);

  @override
  State<Notfication> createState() => _NotficationState();
}

class _NotficationState extends State<Notfication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              "Notfication",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 19, color: Colors.black,fontWeight: FontWeight.bold),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 300,
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(color: mainColoe()),
                  ),
                  Text(
                    "NO Notfications",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 19, color: Colors.black),
                  ),
                  Text(
                    "you'll be able to keep trak of your notigication on this page",maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17, color: longWordc()),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
