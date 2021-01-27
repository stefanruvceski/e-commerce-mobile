import 'package:http/http.dart' show Client;
import 'package:instagram/models/Product.dart';
import 'dart:convert';


  Client client = Client();
Future<List<Product>> fetchProducts() async {

  final response = await client.get('http://10.0.2.2:5000/api/products');
  if (response.statusCode == 200 || response.statusCode == 201) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    //Map<String, dynamic> m = jsonDecode(response.body);
    final List result = json.decode(response.body);
   
    
    List<Product> prods = [];
    for (Map json_ in result) {
        try {
          prods.add(Product.fromJson(json_));
        }
        catch (Exception) {
          print(Exception);
        }
      }
    return prods;
    
  } else {
    print('njesta');
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load product');
  }
  //rreturn s;
}
