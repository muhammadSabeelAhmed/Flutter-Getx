import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:statemanagement_2/controller/productcontroller.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    ProductController productController = Get.put(ProductController());

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back),
        ),
        appBar: AppBar(
          title: Text("Cart"),
        ),
        body: Obx(() {
          return ListView.builder(
            itemCount: productController.cartList.length,
            itemBuilder: ((context, index) {
              return ListTile(
                title: Text(productController.cartList[index].name),
                subtitle: Text(productController.cartList[index].price),
                trailing: InkWell(
                  onTap: () {
                    productController.cartList
                        .remove(productController.cartList[index]);
                  },
                  child: Icon(
                    Icons.remove,
                    color: Colors.red,
                  ),
                ),
              );
            }),
          );
        }));
  }
}
