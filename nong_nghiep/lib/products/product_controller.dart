import 'package:get/get.dart';
import 'package:nong_nghiep/products/products.dart';
import 'package:nong_nghiep/products/products_api.dart';

class ProductController extends GetxController {
  final String productsId;
  final _product = Product.undefine.obs;

  ProductController(this.productsId);

  Product get product => _product.value;

  _fetchProduct() async {
    var rs = await ProductsApi.getProduct(productsId);
    _product(Product.from(rs.data['data']));
  }

  @override
  void onInit() {
    _fetchProduct();
    super.onInit();
  }
}