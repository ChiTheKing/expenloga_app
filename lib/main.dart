import 'package:expenloga_app/Bar/bar_chart_cubit.dart';
import 'package:expenloga_app/database_stuff/database.dart';
import 'package:expenloga_app/expense_cubit.dart';
import 'package:expenloga_app/image_page.dart';
import 'package:expenloga_app/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'database_stuff/blueprint.dart';

void main() {
  final database = DataBase();
  runApp(MyApp(database: database));
}

class MyApp extends StatelessWidget {
  final DataBase database;
  const MyApp({super.key, required this.database});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ExpenseCubit>(create: (_) => ExpenseCubit(database)),
        BlocProvider<BarChartCubit>(create: (_) => BarChartCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (_) => const MyHomePage(title: 'Spenda'),
          //  'add expense': (_) => AddExpensePage(),
          'receipt page': (_) => ReceiptPage(),
        },
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
      ),
    );
  }
}
