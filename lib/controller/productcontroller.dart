import 'package:get/get.dart';
import 'package:statemanagement_2/models/product.dart';

class ProductController extends GetxController {
  List<Product> productList = [
    Product("Shampoo", "This is sunsilk shampoo", "Rs. 350"),
    Product("Surf Excel", "This is sunsilk shampoo", "Rs. 450"),
    Product("Banana", "This is sunsilk shampoo", "Rs. 1000"),
    Product("Sugar", "This is sunsilk shampoo", "Rs. 1500"),
    Product("Rice", "This is sunsilk shampoo", "Rs. 200"),
    Product("Tapal", "This is sunsilk shampoo", "Rs. 50"),
  ];

  var cartList = [].obs;

  addToCart(Product product) {
    cartList.add(product);
  }

  removeFromCart(Product product) {
    cartList.remove(product);
  }
}
