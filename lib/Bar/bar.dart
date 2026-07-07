import 'package:equatable/equatable.dart';

class Bar extends Equatable {
  final int? cateIndex;
  final int? amounted;

  const Bar({required this.cateIndex, required this.amounted});

  //gotten from equatable package
  @override
  List<Object?> get props => [cateIndex, amounted];
}
