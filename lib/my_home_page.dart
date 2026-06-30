import 'package:expenloga_app/add_expense_page.dart';
import 'package:expenloga_app/Bar/bar.dart';
import 'package:expenloga_app/Bar/bar_chart_cubit.dart';
import 'package:expenloga_app/category.dart';
import 'package:expenloga_app/expense.dart';
import 'package:expenloga_app/expense_cubit.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: BlocBuilder<ExpenseCubit, List<Expense>>(
        builder: (context, state1) {
          return state1.isEmpty
              ? Center(
                  child: Text(
                    "Click the + icon to begin",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: .bold,
                    ),
                  ),
                )
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SizedBox(
                          width: double.infinity,
                          height: 300,

                          child: BlocBuilder<BarChartCubit, Bar>(
                            builder: (context, state) {
                              //this variable of List<double> helps to update the amount(length) of each bar
                              List<double> categoryTotals = List.generate(8, (
                                index,
                              ) {
                                return state1
                                    .where(
                                      (expense) => expense.categoryId == index,
                                    )
                                    .fold(0.0, (sum, item) => sum + item.price);
                              });

                              return BarChart(
                                BarChartData(
                                  titlesData: FlTitlesData(
                                    topTitles: const AxisTitles(
                                      sideTitles: SideTitles(showTitles: false),
                                    ),
                                    rightTitles: const AxisTitles(
                                      sideTitles: SideTitles(showTitles: false),
                                    ),

                                    bottomTitles: AxisTitles(
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        reservedSize: 40,
                                        interval: 1,
                                        getTitlesWidget: (value, meta) {
                                          int newValue = value.toInt();
                                          if (newValue >= 0 && newValue <= 7) {
                                            String displayName =
                                                categories[newValue].title;
                                            return SideTitleWidget(
                                              meta: meta,
                                              child: SizedBox(
                                                width: 25,
                                                child: Text(
                                                  overflow: .ellipsis,
                                                  textAlign: .start,
                                                  displayName,
                                                  style: TextStyle(
                                                    fontSize: 9,
                                                    fontWeight: .bold,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          return SizedBox.shrink();
                                        },
                                      ),
                                    ),
                                  ),
                                  barGroups: [
                                    BarChartGroupData(
                                      x: 0,
                                      barRods: [
                                        BarChartRodData(toY: categoryTotals[0]),
                                      ],
                                    ),
                                    BarChartGroupData(
                                      x: 1,
                                      barRods: [
                                        BarChartRodData(toY: categoryTotals[1]),
                                      ],
                                    ),
                                    BarChartGroupData(
                                      x: 2,
                                      barRods: [
                                        BarChartRodData(toY: categoryTotals[2]),
                                      ],
                                    ),
                                    BarChartGroupData(
                                      x: 3,
                                      barRods: [
                                        BarChartRodData(toY: categoryTotals[3]),
                                      ],
                                    ),
                                    BarChartGroupData(
                                      x: 4,
                                      barRods: [
                                        BarChartRodData(toY: categoryTotals[4]),
                                      ],
                                    ),
                                    BarChartGroupData(
                                      x: 5,
                                      barRods: [
                                        BarChartRodData(toY: categoryTotals[5]),
                                      ],
                                    ),
                                    BarChartGroupData(
                                      x: 6,
                                      barRods: [
                                        BarChartRodData(toY: categoryTotals[6]),
                                      ],
                                    ),
                                    BarChartGroupData(
                                      x: 7,
                                      barRods: [
                                        BarChartRodData(toY: categoryTotals[7]),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 8.0,
                                bottom: 8.0,
                              ),
                              child: Text(
                                state1.isEmpty ? '' : 'Recent transactions',

                                style: TextStyle(fontWeight: .bold),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                color: state1.isEmpty
                                    ? Colors.transparent
                                    : Color.fromARGB(255, 1, 26, 46),
                              ),

                              child: ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: state1.length,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    child: ListTile(
                                      leading: FaIcon(
                                        state1[index].selectedCategory!.icon,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      title: Text(
                                        state1[index].name,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      subtitle: Text(
                                        state1[index].comment,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                      trailing: Column(
                                        crossAxisAlignment: .end,
                                        mainAxisAlignment: .spaceEvenly,
                                        children: [
                                          Text(
                                            NumberFormat(
                                              '₦#,###',
                                            ).format(state1[index].price),
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            state1[index].date,
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.pushNamed(
                                        context,
                                        'receipt page',
                                        arguments: state1[index],
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            requestFocus: true,
            showDragHandle: true,
            enableDrag: true,
            isScrollControlled: true,
            context: context,
            builder: (context) => AddExpensePage(),
          );
        },
        tooltip: 'add expense',
        child: const Icon(Icons.add),
      ),
    );
  }
}
