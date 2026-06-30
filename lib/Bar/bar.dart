class Bar {
  Bar({required this.cateIndex, required this.amounted});

  //gotten from equatable package
  @override
  bool operator ==(Object other) {
    return super == other;
  }

  int? cateIndex;
  int? amounted;
}
