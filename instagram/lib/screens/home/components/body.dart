import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';
import 'package:instagram/models/Product.dart';
import 'categories.dart';
import 'item_cart.dart';
import '../../details/details_screen.dart';
import 'package:instagram/services/test.dart';

class Body extends StatelessWidget {
  Future<List<Product>> productss;
  Future<Null> _updateProducts()  {
    productss =  fetchProducts();
  }
  @override
  Widget build(BuildContext context) {
    _updateProducts();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Women",
            style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(fontWeight: FontWeight.bold),
            ),
        ),
        Categories(),
        Expanded(
          
          child: FutureBuilder<List<Product>>(
            future: productss,
            builder: (BuildContext context, AsyncSnapshot<List<Product>> snapshot){
              if(snapshot.hasData){
                return Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                itemCount: snapshot.data.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75
                ),
                itemBuilder: (context,index)=> ItemCard(
                  product: snapshot.data[index],
                  press: () =>
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> DetailsScreen(
                          product:snapshot.data[index],
                        ),
                      )),
                  )
                ),
        );}else{
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          );
        }
            }
          ),
          )
      ],
    );
  }
}

