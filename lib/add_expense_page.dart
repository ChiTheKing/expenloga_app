import 'dart:io';

import 'package:expenloga_app/Bar/bar_chart_cubit.dart';
import 'package:expenloga_app/category.dart';
import 'package:expenloga_app/expense_cubit.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';

class AddExpensePage extends StatefulWidget {
  const AddExpensePage({super.key});

  @override
  State<AddExpensePage> createState() => _AddExpensePageState();
}

class _AddExpensePageState extends State<AddExpensePage> {
  // Variables for image picker function
  File? imagine; // to be used in the function
  final picker =
      ImagePicker(); // a placeholder variable instead of typing out ImagePicker() each time I need to reference one of it's methods.

  //THE FOLLOWING SET OF COMMENTS ARE FOR THE AUTHOR'S PERSONAL CONSUMPTION, AND TO ASSIST THE AUTHOR UNDERSTAND HIS CODE FURTHER

  /// this is my custom Image picker function, since it is something I'm waiting -
  /// for I'll use 'async' just before the function body and -
  /// await in front of what I want to wait for,
  /// what I'm actually waiting for is for the 'image_picker' provided "pickImage" function to execute 'ImageSource.gallery(or camera),
  /// this 'ImageSource.gallery' is basically just the whole process for the user to pick an Image from their gallery

  //===========================beginning of function===================================
  void pickingImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      imagine = File(
        pickedFile.path,
      ); // File is a data type in dart, in this case pickedFile.path is a file
      setState(
        () {},
      ); // this will completely refresh the current display just after executing the if statement logic
    }
  }
  //============================ending of function====================================

  DateTime _dateTime = DateTime(2010);
  String get dateText => DateFormat('d MMM yyyy').format(_dateTime);

  Category? selectedCategory;

  String? errorText1;
  String? errorText2;
  String? errorText3;
  String? errorText4;
  TextEditingController nameControl = TextEditingController();
  TextEditingController priceControl = TextEditingController();
  TextEditingController commentControl = TextEditingController();

  @override
  void dispose() {
    nameControl.dispose();
    priceControl.dispose();
    commentControl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double high = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsetsGeometry.all(8.0),
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: high * 0.75,
              child: ListView(
                children: [
                  //name
                  TextField(
                    selectAllOnFocus: true,
                    maxLength: 30,
                    controller: nameControl,
                    decoration: InputDecoration(errorText: errorText1),
                  ),
                  //Drop down menu items start!!!!!!
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      DropdownButton<Category>(
                        alignment: AlignmentGeometry.center,

                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        value: selectedCategory,
                        items: categories
                            .map(
                              (category) => DropdownMenuItem(
                                value: category,
                                child: Row(
                                  children: [
                                    FaIcon(category.icon, color: Colors.blue),
                                    const SizedBox(width: 12),
                                    Text(category.title),
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                        onChanged: (Category? newValue) {
                          setState(() {
                            selectedCategory = newValue;
                          });
                        },
                      ),
                      if (errorText4 != null)
                        Text(
                          errorText4!,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 17, 0),
                          ),
                        ),
                    ],
                  ),
                  // drop down menu items end!!!!!!

                  //amount
                  TextField(
                    maxLength: 10,
                    selectAllOnFocus: true,
                    // autocorrect, show cursor, focusnode, enable suggestions
                    controller: priceControl,
                    decoration: InputDecoration(errorText: errorText3),
                    keyboardType: TextInputType.numberWithOptions(),
                  ),

                  //comment
                  TextField(
                    selectAllOnFocus: true,
                    maxLength: 60,
                    controller: commentControl,
                    decoration: InputDecoration(errorText: errorText2),
                  ),
                  Column(
                    mainAxisAlignment: .spaceBetween,
                    mainAxisSize: .min,
                    children: [
                      Text('date of purchase'),
                      SizedBox(height: 10),
                      Builder(
                        builder: (context) {
                          return InkWell(
                            onTap: () async {
                              DateTime? newDate = await showDatePicker(
                                initialEntryMode: DatePickerEntryMode.input,
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2010),
                                lastDate: DateTime(2030),
                              );

                              if (newDate != null) {
                                setState(() {
                                  _dateTime = newDate;
                                });
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 196, 118, 118),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(16),
                                ),
                              ),
                              alignment: .center,

                              width: 170,
                              height: 40,

                              child: Text(
                                DateFormat('d MMM yyyy').format(_dateTime),
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: .bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      pickingImage();
                    },
                    label: Icon(Icons.photo),
                  ),
                ],
              ),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 1, 26, 46),
                foregroundColor: Colors.white,
                elevation: 3,
                shadowColor: Colors.black.withValues(),
              ),
              onPressed: () {
                setState(() {
                  errorText1 = null;
                  errorText2 = null;
                  errorText3 = null;
                  errorText4 = null;
                });
                if (selectedCategory != null) {
                  if (nameControl.text.trim().isNotEmpty) {
                    if (commentControl.text.trim().isNotEmpty) {
                      final int? price = int.tryParse(priceControl.text.trim());

                      if (price != null) {
                        //Sends the value the user typed into the name field to expense cubit
                        context.read<ExpenseCubit>().saveNewExpense(
                          nameControl.text.trim(),
                          price,
                          commentControl.text.trim(),
                          selectedCategory,
                          dateText,
                          // this helps reduce the file to just the name(String) of it's path.
                          imagine?.path,
                          //This is basically just for getting the index of the selectedCategory Category from the categories list
                          categories.indexWhere(
                            (category) =>
                                category.title == selectedCategory!.title,
                          ),
                        );
                        context.read<BarChartCubit>().getBarData(
                          categories.indexOf(selectedCategory!),
                          price,
                        );

                        Navigator.pop(context);
                      } else {
                        setState(() {
                          errorText3 = 'add a valid price';
                        });
                      }
                    } else {
                      setState(() {
                        errorText2 = 'add a brief comment';
                      });
                    }
                  } else {
                    setState(() {
                      errorText1 = 'add name field';
                    });
                  }
                } else {
                  setState(() {
                    errorText4 = 'Select a category';
                  });
                }
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
