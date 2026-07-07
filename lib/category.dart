// The new import statement for the custom icon pack
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Map<String, FaIconData> categoryNames = {
  'utensils': FontAwesomeIcons.utensils,
  'car': FontAwesomeIcons.car,
  'house': FontAwesomeIcons.house,
  'bagShopping': FontAwesomeIcons.bagShopping,
  'tv': FontAwesomeIcons.tv,
  'heartPulse': FontAwesomeIcons.heartPulse,
  'creditCard': FontAwesomeIcons.creditCard,
  'ellipsis': FontAwesomeIcons.ellipsis,
};

class Category {
  final String iconKey;
  final int id;
  final String title;

  Category({required this.iconKey, required this.title, required this.id});
}

List<Category> categories = [
  Category(id: 1, iconKey: 'utensils', title: "Food & Dining"),
  Category(id: 2, iconKey: 'car', title: "Transportation"),
  Category(id: 3, iconKey: 'house', title: "Housing & Utilities"),
  Category(id: 4, iconKey: 'bagShopping', title: "Shopping"),
  Category(id: 5, iconKey: 'tv', title: "Entertainment"),
  Category(id: 6, iconKey: 'heartPulse', title: "Health & Wellness"),
  Category(id: 7, iconKey: 'creditCard', title: "Bills & Subscriptions"),
  Category(id: 8, iconKey: 'ellipsis', title: "Miscellaneous/Other"),
];
