import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/homepage_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final homeController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: homeController.products.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Id"),
                        Text(homeController.products[index].id.toString()),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Title"),
                        Text(homeController.products[index].title!),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Descriptions"),
                        Text(homeController.products[index].description!),
                      ],
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
