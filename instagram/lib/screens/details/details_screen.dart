import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';
import 'package:instagram/models/Product.dart';
import 'package:instagram/screens/details/components/body.dart';


class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key,this.product}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0, //ubija liniju appbar-a
      leading: IconButton(
        icon: Icon(Icons.arrow_back),onPressed: ()=> Navigator.pop(context),
        ),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search), onPressed: (){}),
        IconButton(icon: Icon(Icons.shopping_bag), onPressed: (){}),
        SizedBox(width: kDefaultPaddin/2,)
      ],
    );
  }
}