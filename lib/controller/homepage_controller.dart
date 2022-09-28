import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx/apis/api_provider.dart';
import 'package:getx/apis/api_urls.dart';

import '../model/product_model.dart';

class HomePageController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    getProducts();
    super.onInit();
  }

  var products = <ProductModel>[].obs;
  ProductModel model = ProductModel();

  Future getProducts() async {
    final res = await ApiProvider().get(url: ApiUrl.getProducts);
    final decodedString = json.decode(res.body);
    for (int i = 0; i < decodedString["products"].length; i++) {
      model = ProductModel.fromJson(decodedString["products"][i]);
      products.add(model);
    }

    print(products.length);
  }
}
