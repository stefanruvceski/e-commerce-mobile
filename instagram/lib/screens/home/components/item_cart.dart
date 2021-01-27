import 'package:flutter/material.dart';
import 'package:instagram/models/Product.dart';
import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key, this.product, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
          child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(kDefaultPaddin),
                // height: 180,
                // width: 160,
                decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(product.image)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin/4),
              child: Text(
                product.title,
                style: TextStyle(
                  color: Colors.white24
                  ),
                ),
            ),
            Text(
              "\$" + product.price.toString(),
              style: TextStyle(
                  color: Colors.white38,
                  fontWeight: FontWeight.bold
                  ),
              ),
          ],
      ),
    );
  }
}



