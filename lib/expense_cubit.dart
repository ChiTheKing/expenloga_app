import 'package:expenloga_app/category.dart';
import 'package:expenloga_app/expense.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpenseCubit extends Cubit<List<Expense>> {
  ExpenseCubit() : super([]);

  //to be used later
  void addExpenseCategory(Expense newExpense) {}
  //to be used later
  void addExpenseDate(Expense newExpense) {}

  //to be used later
  void addExpensePic(Expense newExpense) {}

  // this is the function to create a new expense
  void saveNewExpense(
    String name,
    int price,
    String comment,
    Category? selectedCategory,
    String dateText,
    String? imagePath,
    int? catId,
  ) {
    Expense myExpense = Expense(
      name: name,
      price: price,
      comment: comment,
      selectedCategory: selectedCategory,
      date: dateText,
      imagePath: imagePath,
      categoryId: catId,
    );
    List<Expense> newExpenseList = List<Expense>.from(state);

    newExpenseList.add(myExpense);
    emit(newExpenseList);
  }
}
