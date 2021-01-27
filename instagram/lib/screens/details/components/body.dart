import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';
import 'package:instagram/models/Product.dart';
import '../../details/components/product_title_with_image.dart';
import '../../details/components/color_and_size.dart';
import '../../details/components/description.dart';
import '../../details/components/counter_with_fav_btn.dart';
import '../../details/components/add_to_cart.dart';
class Body extends StatelessWidget {
   final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //visina i sirina body dela
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top:size.height * 0.33),
                  padding: EdgeInsets.only(top:size.height*.12,left: kDefaultPaddin,right: kDefaultPaddin),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24)
                      )
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      SizedBox(height: kDefaultPaddin / 2),
                      Description(product: product),
                      SizedBox(height: kDefaultPaddin / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: kDefaultPaddin / 2),
                      AddToCart(product: product)
                    ],
                  
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      )
    );
  }
}

