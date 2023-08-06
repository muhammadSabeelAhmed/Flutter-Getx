import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement_2/controller/productcontroller.dart';
import 'package:statemanagement_2/views/cartview.dart';

class ProductView extends StatelessWidget {
  ProductView({super.key});

  ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.shopping_bag),
          onPressed: () {
            Get.to(CartView());
          }),
      body: ListView.builder(
          itemCount: productController.productList.length,
          itemBuilder: ((context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  // productController
                  //     .addToCart(productController.productList[index]);
                },
                title: Text(productController.productList[index].name),
                trailing: InkWell(
                  child: Icon(Icons.add),
                  onTap: () {
                    productController
                        .addToCart(productController.productList[index]);
                  },
                ),
              ),
            );
          })),
    );
  }
}
