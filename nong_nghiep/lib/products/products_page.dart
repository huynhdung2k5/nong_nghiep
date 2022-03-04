import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nong_nghiep/cart/quantity_view.dart';
import 'package:nong_nghiep/products/details_product.dart';
import 'package:nong_nghiep/products/info_products.dart';
import 'package:nong_nghiep/products/product_controller.dart';
import 'package:nong_nghiep/rating/info_rating.dart';
import 'package:nong_nghiep/rating/rating_tile.dart';
import 'package:nong_nghiep/store/store_tile.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productId = Get.arguments;
    final controller = Get.put(ProductController(productId), tag: productId);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thông tin sản phẩm'),
      ),
      body: Obx(() =>
        Stack(
          children: [
            ListView(
              padding: const EdgeInsets.only(bottom: 56),
              shrinkWrap: true,
              children: [
                InfoProducts(
                  controller.product.name,
                  controller.product.newPrice,
                  controller.product.price,
                  '50k',
                  50000,
                  '',
                ),
                const QuantityView(),
                const StoreTile(),
                const DetailsProduct(),
                const InfoRating(),
                const RatingTile(),
                const RatingTile(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}