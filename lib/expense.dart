// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:expenloga_app/category.dart';

class Expense {
  String name;
  int price;
  String comment;
  Category? selectedCategory;
  String date;
  String? imagePath;
  int? categoryId;

  Expense({
    required this.name,
    required this.price,
    required this.comment,
    required this.selectedCategory,
    required this.date,
    required this.imagePath,
    required this.categoryId,
  });

  /// name
  /// amount
  /// category
  /// date
  /// comment
  /// receipt (image)
}
