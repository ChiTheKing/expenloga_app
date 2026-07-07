import 'package:expenloga_app/category.dart';
import 'package:expenloga_app/database_stuff/database.dart';
import 'package:expenloga_app/expense.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpenseCubit extends Cubit<List<Expense>> {
  final DataBase database;

  ExpenseCubit(this.database) : super([]) {
    // Automatically fetch data when the Cubit initializes
    loadExpenses();
  }

  // Fetches raw data from Drift and translates it into your UI's Expense objects
  Future<void> loadExpenses() async {
    final List<ExpensePrintData> rawDatabaseRows = await database
        .getStoredExpenses();

    final List<Expense> structuralExpenses = rawDatabaseRows.map((row) {
      // Reconstruct the Category object using the saved ID
      final categoryMatch = categories.firstWhere(
        (cat) => cat.id == row.categoryIDPrint,
        orElse: () => categories.first, // Safe fallback
      );

      return Expense(
        name: row.namePrint,
        price: row.pricePrint,
        comment: row.commentPrint,
        selectedCategory: categoryMatch,
        date: row.datePrint,
        imagePath: row.imagePathPrint,
        categoryId: row.categoryIDPrint,
      );
    }).toList();

    emit(structuralExpenses);
  }

  // this is the function to create a new expense
  Future<void> saveNewExpense(
    String name,
    int price,
    String comment,
    Category? selectedCategory,
    String dateText,
    String? imagePath,
    int? catId,
  ) async {
    await database.expenseDataBase(
      name,
      comment,
      dateText,
      imagePath,
      price,
      catId,
    );

    // Tell the UI to update with the fresh data we just wrote to disk
    await loadExpenses();
  }
}
