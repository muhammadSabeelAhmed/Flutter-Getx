import 'package:get/get.dart';

class FavortiesConroller extends GetxController {
  RxList<String> fruitsList = ["Orange", "Banana", "Mango", "Apple"].obs;
  var favList = [].obs;

  addToFav(String fruit) {
    favList.add(fruit);
  }

  removeFromFav(String fruit) {
    favList.remove(fruit);
  }
}
