import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:marketly/models/item_model.dart';
import 'package:meta/meta.dart';

part 'grocery_items_model.g.dart';

@HiveType(typeId: 0)
class GroceryItems extends HiveObject {

  @HiveField(0)
  String category;

  @HiveField(1)
  List<Item> items;

  GroceryItems({
    @required this.category,
    this.items
  });

  @override
  String toString() {
    return jsonEncode({
      'category': this.category
    });
  }
}
