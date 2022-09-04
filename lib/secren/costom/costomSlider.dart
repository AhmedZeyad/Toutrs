import 'package:flutter/material.dart';
import 'package:tuters/secren/product/prodductpage.dart';
import '../../Data/homeData.dart';
import '../../Data/productData.dart';
import '../../Data/pupblicData.dart';

PageView CostomSlider(
  Color colore,
  List image,
) {
  return PageView.builder(
      itemCount: Offring.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            print(index);
            // double indexe=commentRating[index];
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PrductPage(
                  StarsN:StarsNu,
                  discount: discountList[index],
                  Rating:UserStar,
                  CommentName:commentName,
                      image: image[index],
                      name: RestN[index],
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
                    fit: BoxFit.cover, image: AssetImage(image[index]))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(image.length, (indexcolor) {
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
