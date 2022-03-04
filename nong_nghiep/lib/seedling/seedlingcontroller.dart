import 'package:get/get.dart';
import 'package:nong_nghiep/products/products.dart';
import 'package:nong_nghiep/products/products_api.dart';
import 'package:nong_nghiep/seedling/seedling.dart';
import 'package:nong_nghiep/seedling/seedling_api.dart';

class SeedlingController extends GetxController {
  final String type;
  final _category = Category.undefine.obs;
  final _subCategory = Subcategory.undefine.obs;
  final _groupCategory = GroupCategory.undefine.obs;
  final _subGroupCategory = SubGroupCategory.undefine.obs;

  final groupCategoryList = <GroupCategory>[].obs;
  final productsList = <Products>[].obs;

  final _loading = false.obs;
  var currentIndex = 0.obs;

  Category get category => _category.value;
  Subcategory get subCategory => _subCategory.value;
  GroupCategory get groupCategory => _groupCategory.value;
  SubGroupCategory get subGroupCategory => _subGroupCategory.value;
  bool get loading => _loading.value;
  
  SeedlingController(this.type);

  _fetchCategory() async {
    try {
      _loading(true);
      final rs = await SeedlingApi.getCategory(type);
      _category(Category.from(rs.data['data']));
      updateSubCategory(category.subCategory[0]);
    } on Exception catch (e) {
      print(e.toString());
    }finally{
      _loading(false);
    }
  }

  _fetchProduct() async {
    try {
      _loading(true);
      final rs = await ProductsApi.getProducts(
        subCategory.id, 
        groupCategory.id, 
        subGroupCategory.id, 
        0);

      productsList((rs.data['data'] as List)
        .map((e) => Products.from(e)).toList());
    } on Exception catch (e) {
      print('$e');
    }finally{
      _loading(false);
    }
  }

  updateSubCategory(Subcategory x) async {
    _subCategory(x);
    try {
      _loading(true);
      final rs = await SeedlingApi.getGroupCategory(x.id);
      groupCategoryList(
        (rs.data['data'] as List)
        .map((e) => GroupCategory.from(e)).toList());
      if (groupCategoryList.isNotEmpty) {
       updateGroupCategory(groupCategoryList[0]); 
      }else{
        updateGroupCategory(GroupCategory.undefine);
      }
    } on Exception catch (e) {
      print(e.toString());
    }finally {
      _loading(false);
    }
  }

  updateGroupCategory(GroupCategory x) {
    _groupCategory(x);

    if (x.subGroupCategory.isEmpty) {
      updateSubGroupCategory(SubGroupCategory.undefine);
    }else{
      updateSubGroupCategory(x.subGroupCategory[0]);
    }
  }

  updateSubGroupCategory(SubGroupCategory x) {
    _subGroupCategory(x);
    _fetchProduct();
  }
  @override
  void onInit() {
    _fetchCategory();
    super.onInit();
  }
}