
import 'package:equatable/equatable.dart';
import 'package:nong_nghiep/rating/rating.dart';
import 'package:nong_nghiep/store/store.dart';

import '../models/image.dart';

class Products {
  final String id;
  final String code;
  final String categoryId;
  final String subCategoryId;
  final String groupCategoryId;
  final String subGroupCategoryId;
  final String details;
  final String quality;
  final String name;
  final int price;
  final bool discount;
  final int newPrice;
  final bool highlight;
  final bool isNew;
  final bool sold;
  final List<Image> images;
  final DateTime created;
  final Store store;
  final Rating rating;
  final int? view;
  final int? totalSold;

  Products(this.id, 
    this.code, 
    this.categoryId, 
    this.subCategoryId, 
    this.groupCategoryId, 
    this.subGroupCategoryId, 
    this.details, 
    this.quality, 
    this.name, 
    this.price,
    this.discount,
    this.newPrice, 
    this.highlight, 
    this.isNew, 
    this.sold, 
    this.images, 
    this.created, 
    this.store,
    this.rating, 
    this.view, 
    this.totalSold);


  Products.from(Map<String, dynamic> json)
  : id = json['product']['_id'],
    code = json['product']['code'],
    categoryId = json['product']['categoryID'],
    subCategoryId = json['product']['subCategoryID'],
    groupCategoryId = json['product']['groupCategoryID'],
    subGroupCategoryId = json['product']['subGroupCategoryID'],
    name = json['product']['name'],
    details = json['product']['details'],
    quality = json['product']['quality'],
    price = json['product']['price'],
    discount = json['product']['discount'],
    newPrice = json['product']['newPrice'],
    highlight = json['product']['highlight'],
    isNew = json['product']['new'],
    sold = json['product']['sold'],
    images = (json['product']['image'] as List)
      .map((e) => Image.from(e)).toList(),
    created = DateTime.parse(json['product']['created']),
    store = Store.from(json['store']),
    rating = Rating.from(json['rating']),
    view = json['views'],
    totalSold = json['totalSold'];
}

class Product extends Equatable{
  final String id;
  final String code;
  final String categoryId;
  final String subCategoryId;
  final String groupCategoryId;
  final String subGroupCategoryId;
  final String details;
  final String quality;
  final String name;
  final int price;
  final bool discount;
  final int newPrice;
  final bool highlight;
  final bool isNew;
  final bool sold;
  final List<Image> images;
  final DateTime created;
  final int? view;

  Product.from(Map<String, dynamic> json)
  : id = json['product']['_id'],
    code = json['product']['code'],
    categoryId = json['product']['categoryID'],
    subCategoryId = json['product']['subCategoryID'],
    groupCategoryId = json['product']['groupCategoryID'],
    subGroupCategoryId = json['product']['subGroupCategoryID'],
    name = json['product']['name'],
    details = json['product']['details'],
    quality = json['product']['quality'],
    price = json['product']['price'],
    discount = json['product']['discount'],
    newPrice = json['product']['newPrice'],
    highlight = json['product']['highlight'],
    isNew = json['product']['new'],
    sold = json['product']['sold'],
    images = (json['product']['image'] as List)
      .map((e) => Image.from(e)).toList(),
    created = DateTime.parse(json['product']['created']),
    view = json['views'];

  const Product(this.id, this.code, this.categoryId, this.subCategoryId, this.groupCategoryId, this.subGroupCategoryId, this.details, this.quality, this.name, this.price, this.discount, this.newPrice, this.highlight, this.isNew, this.sold, this.images, this.created, this.view);

  static var undefine = Product('', '', '', '', '', '', '', '', '', 0, false, 0, false, false, false, [], DateTime.now(),0);
  @override
  List<Object?> get props => [id];
}
