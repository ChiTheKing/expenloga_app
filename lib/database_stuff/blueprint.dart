import 'package:drift/drift.dart';

class ExpensePrint extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get namePrint => text()();
  TextColumn get commentPrint => text()();
  TextColumn get datePrint => text()();
  TextColumn get imagePathPrint => text().nullable()();
  IntColumn get pricePrint => integer()();
  IntColumn get categoryIDPrint => integer().nullable()();
}

class CategoryPrint extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get titlePrint => text()();
  TextColumn get iconKeyPrint => text()();
}
