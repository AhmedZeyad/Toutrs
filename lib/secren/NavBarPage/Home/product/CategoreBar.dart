import 'package:flutter/material.dart';
import 'package:tuters/Data/productData.dart';
import 'package:tuters/Data/pupblicData.dart';

class CategoryTab extends StatefulWidget {


  @override
  State<CategoryTab> createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  int Selcted = 0;
  int SuSelcted = 0;
   final element= GlobalKey();

Future scroll()async{
   final context = element.currentContext!;
  await Scrollable.ensureVisible(context);

  print(element);
}
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.white,

                pinned: true,
                // automaticallyImplyLeading: false,

                // expandedHeight: 100,
                flexibleSpace: ListView.builder(
                  itemCount: PageTab.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index) {
                    return GestureDetector(
                      onTap: () {
                        scroll();
                        print(index);
                        setState(() {
                          scroll();
// all.length;
                          ;
                          Selcted = index;
                        });
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Text(
                                  PageTab[index],
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Selcted == index
                                        ? mainColoe()
                                        : Colors.black45,
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
                        ],
                      ),
                    );
                  },
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                    childCount: PageTab.length,
                    (context, int subindex) {

                  print(subindex);
                  SuSelcted=subindex;
                  print(SuSelcted);
                    if (Selcted==subindex-1){
                      // scroll();
                    }


                  return Column(
                    children: [
                      Container(
                          color: Colors.red,
                          child: Text("ddd$subindex")),
                      Myprod(subindex),
                    ],
                  );
                }),
              )
            ],
          ),
        ),
      ],
    );
  }
}

