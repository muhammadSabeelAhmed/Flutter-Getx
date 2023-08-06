import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:statemanagement_2/controller/favcontroller.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  FavortiesConroller favController = Get.put(FavortiesConroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.builder(
              itemCount: favController.fruitsList.length,
              itemBuilder: ((context, index) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      if (favController.favList.contains(
                          favController.fruitsList[index].toString())) {
                        favController.removeFromFav(
                            favController.fruitsList[index].toString());
                      } else {
                        favController.addToFav(
                            favController.fruitsList[index].toString());
                      }
                    },
                    title: Text(favController.fruitsList[index].toString()),
                    trailing: Obx(() => Icon(
                          Icons.favorite,
                          color: favController.favList.contains(
                                  favController.fruitsList[index].toString())
                              ? Colors.red
                              : Colors.grey,
                        )),
                  ),
                );
              }))),
    );
  }
}
