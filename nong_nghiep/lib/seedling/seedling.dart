
import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String id;
  final String name;
  final String type;
  final List<Subcategory> subCategory;

  const Category(this.id, this.name, this.type, this.subCategory);

  Category.from(Map<String, dynamic> json)
    : id = json['_id'],
      name = json['categoryName'],
      type = json['categoryType'],
      subCategory = (json['subCategory'] as List)
    .map((e) => Subcategory.from(e)).toList();
  static const undefine =  Category('undefined','','',[]);
  
  @override
  List<Object?> get props => [id];
}

class Subcategory extends Equatable{
  final String id;
  final String name;

  const Subcategory(this.id, this.name);

  Subcategory.from(Map<String, dynamic> json)
  : id = json['_id'],
    name = json['subCategoryName'];
  
  static const undefine = Subcategory('undefined','');

  @override
  List<Object?> get props => [id];
}

class GroupCategory extends Equatable {
  final String id;
  final String categoryId;
  final String name;
  final List<SubGroupCategory> subGroupCategory;

  const GroupCategory(this.id, this.categoryId, this.name, this.subGroupCategory);

  GroupCategory.from(Map<String, dynamic> json)
  : id = json['_id'],
    categoryId = json['categoryID'],
    name = json['groupCategoryName'],
    subGroupCategory = (json['subGroupCategory'] as List)
    .map((e) => SubGroupCategory.from(e)).toList();

  static const undefine = GroupCategory('undefined','','',[]);
  
  @override
  List<Object?> get props => [id];
}

class SubGroupCategory extends Equatable {
  final String id;
  final String name;

  const SubGroupCategory(this.id, this.name);
  
  SubGroupCategory.from(Map<String, dynamic> json)
  : id = json['_id'],
    name = json['subGroupCategoryName'];
  
  static const undefine = SubGroupCategory('undefined','');

  @override
  List<Object?> get props => [id];
}

