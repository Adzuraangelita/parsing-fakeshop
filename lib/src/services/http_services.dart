import 'package:http/http.dart' as http;

class HttpServices {
  static Future<List<ProductsModel>> fatchProducts() async{
    var response = 
    await http.get(Uri.parse("https://fakestroreapi.com/products"));
    if (response.statusCode == 200) {
      var data = response.body;
return productsModelFromJson(data);
    } else {
      throw Exception();
    }
  }
}