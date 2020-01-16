import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pro_nav_app/product.dart';
import 'package:flutter_pro_nav_app/rating_box.dart';

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.item}) : super(key: key);
  final Product item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 140,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/images/" + this.item.image),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                        this.item.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold)),
                    Text(this.item.description),
                    Text("Price: " + this.item.price.toString()),
                    RatingBox(),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}