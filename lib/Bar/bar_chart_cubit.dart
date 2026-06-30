import 'package:expenloga_app/Bar/bar.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class BarChartCubit extends Cubit<Bar> {
  BarChartCubit() : super(Bar(cateIndex: null, amounted: null));

  void getBarData(int? categoryIndex, int? price) {
    Bar newBar = Bar(cateIndex: categoryIndex, amounted: price);
    emit(newBar);
  }
}
