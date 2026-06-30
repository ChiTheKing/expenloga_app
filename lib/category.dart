// The new import statement for the custom icon pack
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Category {
  final FaIconData icon;
  final String title;
  Category({required this.icon, required this.title});
}

List<Category> categories = [
  Category(icon: FontAwesomeIcons.utensils, title: "Food & Dining"),
  Category(icon: FontAwesomeIcons.car, title: "Transportation"),
  Category(icon: FontAwesomeIcons.house, title: "Housing & Utilities"),
  Category(icon: FontAwesomeIcons.bagShopping, title: "Shopping"),
  Category(icon: FontAwesomeIcons.tv, title: "Entertainment"),
  Category(icon: FontAwesomeIcons.heartPulse, title: "Health & Wellness"),
  Category(icon: FontAwesomeIcons.creditCard, title: "Bills & Subscriptions"),
  Category(icon: FontAwesomeIcons.ellipsis, title: "Miscellaneous/Other"),
];
