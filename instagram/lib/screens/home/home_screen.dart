import 'package:flutter/material.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){},
        ),
        actions: <Widget>[
          IconButton(
          icon: Icon(Icons.search),
          onPressed: (){}),
          IconButton(
          icon: Icon(Icons.shopping_bag),
          onPressed: (){}),
        ],
      ),
      body: Body(),
    );
  }
}