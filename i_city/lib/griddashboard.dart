import 'package:flutter/material.dart';


class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Turlar",
      img: "dosyalar/images/tour.png");

  Items item2 = new Items(
    title: "Yemek Kültürü",
    img: "dosyalar/images/food.jpg",
  );
  Items item3 = new Items(
    title: "Kültür Turları",
    img: "dosyalar/images/tarih.jpg",
  );
  Items item4 = new Items(
    title: "Yerel Kültür",
    img: "dosyalar/images/yerel.jpg",
  );


  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4,];
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.indigo[300], borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 90,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: ( TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 8,
                  ),

                  SizedBox(
                    height: 14,
                  ),
                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String img;
  Items({this.title,  this.img});
}