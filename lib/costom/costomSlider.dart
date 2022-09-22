import 'package:flutter/material.dart';

import 'package:tuters/secren/NavBarPage/Home/product/prodductpage.dart';
import '../../Data/homeData.dart';
import '../../Data/productData.dart';
import '../../Data/pupblicData.dart';
import '../API/Models/RestorentModles/Offres.dart';
List<Offres>?allmealsoffer;

class CostomSlidere extends StatefulWidget {
  final Color colore;
  const CostomSlidere({
    required this.colore,
});
  @override
  State<CostomSlidere> createState() => _CostomSlidereState();
}

class _CostomSlidereState extends State<CostomSlidere> {


  @override
  Widget build(BuildContext context) {
    return CostomSlider(widget.colore);
  }
}

PageView CostomSlider(

Color colore,
) {

  return PageView.builder(
      itemCount: (allmealsoffer?.length??2),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            print(index);
            // double indexe=commentRating[index];
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PrductPage(
                  StarsN:StarsNu,
                  discount: allmealsoffer?[index].caption??"null",
                  Rating:UserStar,
                  CommentName:commentName,
                      image: allmealsoffer?[index].image??null_image,
                      name: allmealsoffer?[index].resN??"null",
                      deleverTime: RestDT[index],
                      comment: RestCom[index],
                      stars: RestS[index],
                      UserStar: commentRating[index], discrabtion:discrabtion[index], NumRating: numbesTating[index] ,
                    )));
          },
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: colore.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(allmealsoffer?[index].image??null_image))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate((allmealsoffer?.length??2), (indexcolor) {
                return Container(
                  margin: EdgeInsets.all(5),
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      color: index == indexcolor
                          ? colore
                          : colore.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5)),
                );
              }),
            ),
          ),
        );
      });

}
