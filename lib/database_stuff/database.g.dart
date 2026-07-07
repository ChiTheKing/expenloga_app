// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ExpensePrintTable extends ExpensePrint
    with TableInfo<$ExpensePrintTable, ExpensePrintData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExpensePrintTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _namePrintMeta = const VerificationMeta(
    'namePrint',
  );
  @override
  late final GeneratedColumn<String> namePrint = GeneratedColumn<String>(
    'name_print',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _commentPrintMeta = const VerificationMeta(
    'commentPrint',
  );
  @override
  late final GeneratedColumn<String> commentPrint = GeneratedColumn<String>(
    'comment_print',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _datePrintMeta = const VerificationMeta(
    'datePrint',
  );
  @override
  late final GeneratedColumn<String> datePrint = GeneratedColumn<String>(
    'date_print',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imagePathPrintMeta = const VerificationMeta(
    'imagePathPrint',
  );
  @override
  late final GeneratedColumn<String> imagePathPrint = GeneratedColumn<String>(
    'image_path_print',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _pricePrintMeta = const VerificationMeta(
    'pricePrint',
  );
  @override
  late final GeneratedColumn<int> pricePrint = GeneratedColumn<int>(
    'price_print',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoryIDPrintMeta = const VerificationMeta(
    'categoryIDPrint',
  );
  @override
  late final GeneratedColumn<int> categoryIDPrint = GeneratedColumn<int>(
    'category_i_d_print',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    namePrint,
    commentPrint,
    datePrint,
    imagePathPrint,
    pricePrint,
    categoryIDPrint,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'expense_print';
  @override
  VerificationContext validateIntegrity(
    Insertable<ExpensePrintData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name_print')) {
      context.handle(
        _namePrintMeta,
        namePrint.isAcceptableOrUnknown(data['name_print']!, _namePrintMeta),
      );
    } else if (isInserting) {
      context.missing(_namePrintMeta);
    }
    if (data.containsKey('comment_print')) {
      context.handle(
        _commentPrintMeta,
        commentPrint.isAcceptableOrUnknown(
          data['comment_print']!,
          _commentPrintMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_commentPrintMeta);
    }
    if (data.containsKey('date_print')) {
      context.handle(
        _datePrintMeta,
        datePrint.isAcceptableOrUnknown(data['date_print']!, _datePrintMeta),
      );
    } else if (isInserting) {
      context.missing(_datePrintMeta);
    }
    if (data.containsKey('image_path_print')) {
      context.handle(
        _imagePathPrintMeta,
        imagePathPrint.isAcceptableOrUnknown(
          data['image_path_print']!,
          _imagePathPrintMeta,
        ),
      );
    }
    if (data.containsKey('price_print')) {
      context.handle(
        _pricePrintMeta,
        pricePrint.isAcceptableOrUnknown(data['price_print']!, _pricePrintMeta),
      );
    } else if (isInserting) {
      context.missing(_pricePrintMeta);
    }
    if (data.containsKey('category_i_d_print')) {
      context.handle(
        _categoryIDPrintMeta,
        categoryIDPrint.isAcceptableOrUnknown(
          data['category_i_d_print']!,
          _categoryIDPrintMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ExpensePrintData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExpensePrintData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      namePrint: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name_print'],
      )!,
      commentPrint: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}comment_print'],
      )!,
      datePrint: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}date_print'],
      )!,
      imagePathPrint: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_path_print'],
      ),
      pricePrint: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}price_print'],
      )!,
      categoryIDPrint: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}category_i_d_print'],
      ),
    );
  }

  @override
  $ExpensePrintTable createAlias(String alias) {
    return $ExpensePrintTable(attachedDatabase, alias);
  }
}

class ExpensePrintData extends DataClass
    implements Insertable<ExpensePrintData> {
  final int id;
  final String namePrint;
  final String commentPrint;
  final String datePrint;
  final String? imagePathPrint;
  final int pricePrint;
  final int? categoryIDPrint;
  const ExpensePrintData({
    required this.id,
    required this.namePrint,
    required this.commentPrint,
    required this.datePrint,
    this.imagePathPrint,
    required this.pricePrint,
    this.categoryIDPrint,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name_print'] = Variable<String>(namePrint);
    map['comment_print'] = Variable<String>(commentPrint);
    map['date_print'] = Variable<String>(datePrint);
    if (!nullToAbsent || imagePathPrint != null) {
      map['image_path_print'] = Variable<String>(imagePathPrint);
    }
    map['price_print'] = Variable<int>(pricePrint);
    if (!nullToAbsent || categoryIDPrint != null) {
      map['category_i_d_print'] = Variable<int>(categoryIDPrint);
    }
    return map;
  }

  ExpensePrintCompanion toCompanion(bool nullToAbsent) {
    return ExpensePrintCompanion(
      id: Value(id),
      namePrint: Value(namePrint),
      commentPrint: Value(commentPrint),
      datePrint: Value(datePrint),
      imagePathPrint: imagePathPrint == null && nullToAbsent
          ? const Value.absent()
          : Value(imagePathPrint),
      pricePrint: Value(pricePrint),
      categoryIDPrint: categoryIDPrint == null && nullToAbsent
          ? const Value.absent()
          : Value(categoryIDPrint),
    );
  }

  factory ExpensePrintData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExpensePrintData(
      id: serializer.fromJson<int>(json['id']),
      namePrint: serializer.fromJson<String>(json['namePrint']),
      commentPrint: serializer.fromJson<String>(json['commentPrint']),
      datePrint: serializer.fromJson<String>(json['datePrint']),
      imagePathPrint: serializer.fromJson<String?>(json['imagePathPrint']),
      pricePrint: serializer.fromJson<int>(json['pricePrint']),
      categoryIDPrint: serializer.fromJson<int?>(json['categoryIDPrint']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'namePrint': serializer.toJson<String>(namePrint),
      'commentPrint': serializer.toJson<String>(commentPrint),
      'datePrint': serializer.toJson<String>(datePrint),
      'imagePathPrint': serializer.toJson<String?>(imagePathPrint),
      'pricePrint': serializer.toJson<int>(pricePrint),
      'categoryIDPrint': serializer.toJson<int?>(categoryIDPrint),
    };
  }

  ExpensePrintData copyWith({
    int? id,
    String? namePrint,
    String? commentPrint,
    String? datePrint,
    Value<String?> imagePathPrint = const Value.absent(),
    int? pricePrint,
    Value<int?> categoryIDPrint = const Value.absent(),
  }) => ExpensePrintData(
    id: id ?? this.id,
    namePrint: namePrint ?? this.namePrint,
    commentPrint: commentPrint ?? this.commentPrint,
    datePrint: datePrint ?? this.datePrint,
    imagePathPrint: imagePathPrint.present
        ? imagePathPrint.value
        : this.imagePathPrint,
    pricePrint: pricePrint ?? this.pricePrint,
    categoryIDPrint: categoryIDPrint.present
        ? categoryIDPrint.value
        : this.categoryIDPrint,
  );
  ExpensePrintData copyWithCompanion(ExpensePrintCompanion data) {
    return ExpensePrintData(
      id: data.id.present ? data.id.value : this.id,
      namePrint: data.namePrint.present ? data.namePrint.value : this.namePrint,
      commentPrint: data.commentPrint.present
          ? data.commentPrint.value
          : this.commentPrint,
      datePrint: data.datePrint.present ? data.datePrint.value : this.datePrint,
      imagePathPrint: data.imagePathPrint.present
          ? data.imagePathPrint.value
          : this.imagePathPrint,
      pricePrint: data.pricePrint.present
          ? data.pricePrint.value
          : this.pricePrint,
      categoryIDPrint: data.categoryIDPrint.present
          ? data.categoryIDPrint.value
          : this.categoryIDPrint,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ExpensePrintData(')
          ..write('id: $id, ')
          ..write('namePrint: $namePrint, ')
          ..write('commentPrint: $commentPrint, ')
          ..write('datePrint: $datePrint, ')
          ..write('imagePathPrint: $imagePathPrint, ')
          ..write('pricePrint: $pricePrint, ')
          ..write('categoryIDPrint: $categoryIDPrint')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    namePrint,
    commentPrint,
    datePrint,
    imagePathPrint,
    pricePrint,
    categoryIDPrint,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExpensePrintData &&
          other.id == this.id &&
          other.namePrint == this.namePrint &&
          other.commentPrint == this.commentPrint &&
          other.datePrint == this.datePrint &&
          other.imagePathPrint == this.imagePathPrint &&
          other.pricePrint == this.pricePrint &&
          other.categoryIDPrint == this.categoryIDPrint);
}

class ExpensePrintCompanion extends UpdateCompanion<ExpensePrintData> {
  final Value<int> id;
  final Value<String> namePrint;
  final Value<String> commentPrint;
  final Value<String> datePrint;
  final Value<String?> imagePathPrint;
  final Value<int> pricePrint;
  final Value<int?> categoryIDPrint;
  const ExpensePrintCompanion({
    this.id = const Value.absent(),
    this.namePrint = const Value.absent(),
    this.commentPrint = const Value.absent(),
    this.datePrint = const Value.absent(),
    this.imagePathPrint = const Value.absent(),
    this.pricePrint = const Value.absent(),
    this.categoryIDPrint = const Value.absent(),
  });
  ExpensePrintCompanion.insert({
    this.id = const Value.absent(),
    required String namePrint,
    required String commentPrint,
    required String datePrint,
    this.imagePathPrint = const Value.absent(),
    required int pricePrint,
    this.categoryIDPrint = const Value.absent(),
  }) : namePrint = Value(namePrint),
       commentPrint = Value(commentPrint),
       datePrint = Value(datePrint),
       pricePrint = Value(pricePrint);
  static Insertable<ExpensePrintData> custom({
    Expression<int>? id,
    Expression<String>? namePrint,
    Expression<String>? commentPrint,
    Expression<String>? datePrint,
    Expression<String>? imagePathPrint,
    Expression<int>? pricePrint,
    Expression<int>? categoryIDPrint,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (namePrint != null) 'name_print': namePrint,
      if (commentPrint != null) 'comment_print': commentPrint,
      if (datePrint != null) 'date_print': datePrint,
      if (imagePathPrint != null) 'image_path_print': imagePathPrint,
      if (pricePrint != null) 'price_print': pricePrint,
      if (categoryIDPrint != null) 'category_i_d_print': categoryIDPrint,
    });
  }

  ExpensePrintCompanion copyWith({
    Value<int>? id,
    Value<String>? namePrint,
    Value<String>? commentPrint,
    Value<String>? datePrint,
    Value<String?>? imagePathPrint,
    Value<int>? pricePrint,
    Value<int?>? categoryIDPrint,
  }) {
    return ExpensePrintCompanion(
      id: id ?? this.id,
      namePrint: namePrint ?? this.namePrint,
      commentPrint: commentPrint ?? this.commentPrint,
      datePrint: datePrint ?? this.datePrint,
      imagePathPrint: imagePathPrint ?? this.imagePathPrint,
      pricePrint: pricePrint ?? this.pricePrint,
      categoryIDPrint: categoryIDPrint ?? this.categoryIDPrint,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (namePrint.present) {
      map['name_print'] = Variable<String>(namePrint.value);
    }
    if (commentPrint.present) {
      map['comment_print'] = Variable<String>(commentPrint.value);
    }
    if (datePrint.present) {
      map['date_print'] = Variable<String>(datePrint.value);
    }
    if (imagePathPrint.present) {
      map['image_path_print'] = Variable<String>(imagePathPrint.value);
    }
    if (pricePrint.present) {
      map['price_print'] = Variable<int>(pricePrint.value);
    }
    if (categoryIDPrint.present) {
      map['category_i_d_print'] = Variable<int>(categoryIDPrint.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExpensePrintCompanion(')
          ..write('id: $id, ')
          ..write('namePrint: $namePrint, ')
          ..write('commentPrint: $commentPrint, ')
          ..write('datePrint: $datePrint, ')
          ..write('imagePathPrint: $imagePathPrint, ')
          ..write('pricePrint: $pricePrint, ')
          ..write('categoryIDPrint: $categoryIDPrint')
          ..write(')'))
        .toString();
  }
}

class $CategoryPrintTable extends CategoryPrint
    with TableInfo<$CategoryPrintTable, CategoryPrintData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoryPrintTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _titlePrintMeta = const VerificationMeta(
    'titlePrint',
  );
  @override
  late final GeneratedColumn<String> titlePrint = GeneratedColumn<String>(
    'title_print',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _iconKeyPrintMeta = const VerificationMeta(
    'iconKeyPrint',
  );
  @override
  late final GeneratedColumn<String> iconKeyPrint = GeneratedColumn<String>(
    'icon_key_print',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, titlePrint, iconKeyPrint];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'category_print';
  @override
  VerificationContext validateIntegrity(
    Insertable<CategoryPrintData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title_print')) {
      context.handle(
        _titlePrintMeta,
        titlePrint.isAcceptableOrUnknown(data['title_print']!, _titlePrintMeta),
      );
    } else if (isInserting) {
      context.missing(_titlePrintMeta);
    }
    if (data.containsKey('icon_key_print')) {
      context.handle(
        _iconKeyPrintMeta,
        iconKeyPrint.isAcceptableOrUnknown(
          data['icon_key_print']!,
          _iconKeyPrintMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CategoryPrintData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CategoryPrintData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      titlePrint: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title_print'],
      )!,
      iconKeyPrint: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}icon_key_print'],
      ),
    );
  }

  @override
  $CategoryPrintTable createAlias(String alias) {
    return $CategoryPrintTable(attachedDatabase, alias);
  }
}

class CategoryPrintData extends DataClass
    implements Insertable<CategoryPrintData> {
  final int id;
  final String titlePrint;
  final String? iconKeyPrint;
  const CategoryPrintData({
    required this.id,
    required this.titlePrint,
    this.iconKeyPrint,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title_print'] = Variable<String>(titlePrint);
    if (!nullToAbsent || iconKeyPrint != null) {
      map['icon_key_print'] = Variable<String>(iconKeyPrint);
    }
    return map;
  }

  CategoryPrintCompanion toCompanion(bool nullToAbsent) {
    return CategoryPrintCompanion(
      id: Value(id),
      titlePrint: Value(titlePrint),
      iconKeyPrint: iconKeyPrint == null && nullToAbsent
          ? const Value.absent()
          : Value(iconKeyPrint),
    );
  }

  factory CategoryPrintData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CategoryPrintData(
      id: serializer.fromJson<int>(json['id']),
      titlePrint: serializer.fromJson<String>(json['titlePrint']),
      iconKeyPrint: serializer.fromJson<String?>(json['iconKeyPrint']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'titlePrint': serializer.toJson<String>(titlePrint),
      'iconKeyPrint': serializer.toJson<String?>(iconKeyPrint),
    };
  }

  CategoryPrintData copyWith({
    int? id,
    String? titlePrint,
    Value<String?> iconKeyPrint = const Value.absent(),
  }) => CategoryPrintData(
    id: id ?? this.id,
    titlePrint: titlePrint ?? this.titlePrint,
    iconKeyPrint: iconKeyPrint.present ? iconKeyPrint.value : this.iconKeyPrint,
  );
  CategoryPrintData copyWithCompanion(CategoryPrintCompanion data) {
    return CategoryPrintData(
      id: data.id.present ? data.id.value : this.id,
      titlePrint: data.titlePrint.present
          ? data.titlePrint.value
          : this.titlePrint,
      iconKeyPrint: data.iconKeyPrint.present
          ? data.iconKeyPrint.value
          : this.iconKeyPrint,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CategoryPrintData(')
          ..write('id: $id, ')
          ..write('titlePrint: $titlePrint, ')
          ..write('iconKeyPrint: $iconKeyPrint')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, titlePrint, iconKeyPrint);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CategoryPrintData &&
          other.id == this.id &&
          other.titlePrint == this.titlePrint &&
          other.iconKeyPrint == this.iconKeyPrint);
}

class CategoryPrintCompanion extends UpdateCompanion<CategoryPrintData> {
  final Value<int> id;
  final Value<String> titlePrint;
  final Value<String?> iconKeyPrint;
  const CategoryPrintCompanion({
    this.id = const Value.absent(),
    this.titlePrint = const Value.absent(),
    this.iconKeyPrint = const Value.absent(),
  });
  CategoryPrintCompanion.insert({
    this.id = const Value.absent(),
    required String titlePrint,
    this.iconKeyPrint = const Value.absent(),
  }) : titlePrint = Value(titlePrint);
  static Insertable<CategoryPrintData> custom({
    Expression<int>? id,
    Expression<String>? titlePrint,
    Expression<String>? iconKeyPrint,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (titlePrint != null) 'title_print': titlePrint,
      if (iconKeyPrint != null) 'icon_key_print': iconKeyPrint,
    });
  }

  CategoryPrintCompanion copyWith({
    Value<int>? id,
    Value<String>? titlePrint,
    Value<String?>? iconKeyPrint,
  }) {
    return CategoryPrintCompanion(
      id: id ?? this.id,
      titlePrint: titlePrint ?? this.titlePrint,
      iconKeyPrint: iconKeyPrint ?? this.iconKeyPrint,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (titlePrint.present) {
      map['title_print'] = Variable<String>(titlePrint.value);
    }
    if (iconKeyPrint.present) {
      map['icon_key_print'] = Variable<String>(iconKeyPrint.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoryPrintCompanion(')
          ..write('id: $id, ')
          ..write('titlePrint: $titlePrint, ')
          ..write('iconKeyPrint: $iconKeyPrint')
          ..write(')'))
        .toString();
  }
}

abstract class _$DataBase extends GeneratedDatabase {
  _$DataBase(QueryExecutor e) : super(e);
  $DataBaseManager get managers => $DataBaseManager(this);
  late final $ExpensePrintTable expensePrint = $ExpensePrintTable(this);
  late final $CategoryPrintTable categoryPrint = $CategoryPrintTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    expensePrint,
    categoryPrint,
  ];
}

typedef $$ExpensePrintTableCreateCompanionBuilder =
    ExpensePrintCompanion Function({
      Value<int> id,
      required String namePrint,
      required String commentPrint,
      required String datePrint,
      Value<String?> imagePathPrint,
      required int pricePrint,
      Value<int?> categoryIDPrint,
    });
typedef $$ExpensePrintTableUpdateCompanionBuilder =
    ExpensePrintCompanion Function({
      Value<int> id,
      Value<String> namePrint,
      Value<String> commentPrint,
      Value<String> datePrint,
      Value<String?> imagePathPrint,
      Value<int> pricePrint,
      Value<int?> categoryIDPrint,
    });

class $$ExpensePrintTableFilterComposer
    extends Composer<_$DataBase, $ExpensePrintTable> {
  $$ExpensePrintTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get namePrint => $composableBuilder(
    column: $table.namePrint,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get commentPrint => $composableBuilder(
    column: $table.commentPrint,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get datePrint => $composableBuilder(
    column: $table.datePrint,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imagePathPrint => $composableBuilder(
    column: $table.imagePathPrint,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get pricePrint => $composableBuilder(
    column: $table.pricePrint,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get categoryIDPrint => $composableBuilder(
    column: $table.categoryIDPrint,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ExpensePrintTableOrderingComposer
    extends Composer<_$DataBase, $ExpensePrintTable> {
  $$ExpensePrintTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get namePrint => $composableBuilder(
    column: $table.namePrint,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get commentPrint => $composableBuilder(
    column: $table.commentPrint,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get datePrint => $composableBuilder(
    column: $table.datePrint,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imagePathPrint => $composableBuilder(
    column: $table.imagePathPrint,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get pricePrint => $composableBuilder(
    column: $table.pricePrint,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get categoryIDPrint => $composableBuilder(
    column: $table.categoryIDPrint,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ExpensePrintTableAnnotationComposer
    extends Composer<_$DataBase, $ExpensePrintTable> {
  $$ExpensePrintTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get namePrint =>
      $composableBuilder(column: $table.namePrint, builder: (column) => column);

  GeneratedColumn<String> get commentPrint => $composableBuilder(
    column: $table.commentPrint,
    builder: (column) => column,
  );

  GeneratedColumn<String> get datePrint =>
      $composableBuilder(column: $table.datePrint, builder: (column) => column);

  GeneratedColumn<String> get imagePathPrint => $composableBuilder(
    column: $table.imagePathPrint,
    builder: (column) => column,
  );

  GeneratedColumn<int> get pricePrint => $composableBuilder(
    column: $table.pricePrint,
    builder: (column) => column,
  );

  GeneratedColumn<int> get categoryIDPrint => $composableBuilder(
    column: $table.categoryIDPrint,
    builder: (column) => column,
  );
}

class $$ExpensePrintTableTableManager
    extends
        RootTableManager<
          _$DataBase,
          $ExpensePrintTable,
          ExpensePrintData,
          $$ExpensePrintTableFilterComposer,
          $$ExpensePrintTableOrderingComposer,
          $$ExpensePrintTableAnnotationComposer,
          $$ExpensePrintTableCreateCompanionBuilder,
          $$ExpensePrintTableUpdateCompanionBuilder,
          (
            ExpensePrintData,
            BaseReferences<_$DataBase, $ExpensePrintTable, ExpensePrintData>,
          ),
          ExpensePrintData,
          PrefetchHooks Function()
        > {
  $$ExpensePrintTableTableManager(_$DataBase db, $ExpensePrintTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExpensePrintTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExpensePrintTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExpensePrintTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> namePrint = const Value.absent(),
                Value<String> commentPrint = const Value.absent(),
                Value<String> datePrint = const Value.absent(),
                Value<String?> imagePathPrint = const Value.absent(),
                Value<int> pricePrint = const Value.absent(),
                Value<int?> categoryIDPrint = const Value.absent(),
              }) => ExpensePrintCompanion(
                id: id,
                namePrint: namePrint,
                commentPrint: commentPrint,
                datePrint: datePrint,
                imagePathPrint: imagePathPrint,
                pricePrint: pricePrint,
                categoryIDPrint: categoryIDPrint,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String namePrint,
                required String commentPrint,
                required String datePrint,
                Value<String?> imagePathPrint = const Value.absent(),
                required int pricePrint,
                Value<int?> categoryIDPrint = const Value.absent(),
              }) => ExpensePrintCompanion.insert(
                id: id,
                namePrint: namePrint,
                commentPrint: commentPrint,
                datePrint: datePrint,
                imagePathPrint: imagePathPrint,
                pricePrint: pricePrint,
                categoryIDPrint: categoryIDPrint,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ExpensePrintTableProcessedTableManager =
    ProcessedTableManager<
      _$DataBase,
      $ExpensePrintTable,
      ExpensePrintData,
      $$ExpensePrintTableFilterComposer,
      $$ExpensePrintTableOrderingComposer,
      $$ExpensePrintTableAnnotationComposer,
      $$ExpensePrintTableCreateCompanionBuilder,
      $$ExpensePrintTableUpdateCompanionBuilder,
      (
        ExpensePrintData,
        BaseReferences<_$DataBase, $ExpensePrintTable, ExpensePrintData>,
      ),
      ExpensePrintData,
      PrefetchHooks Function()
    >;
typedef $$CategoryPrintTableCreateCompanionBuilder =
    CategoryPrintCompanion Function({
      Value<int> id,
      required String titlePrint,
      Value<String?> iconKeyPrint,
    });
typedef $$CategoryPrintTableUpdateCompanionBuilder =
    CategoryPrintCompanion Function({
      Value<int> id,
      Value<String> titlePrint,
      Value<String?> iconKeyPrint,
    });

class $$CategoryPrintTableFilterComposer
    extends Composer<_$DataBase, $CategoryPrintTable> {
  $$CategoryPrintTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get titlePrint => $composableBuilder(
    column: $table.titlePrint,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get iconKeyPrint => $composableBuilder(
    column: $table.iconKeyPrint,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CategoryPrintTableOrderingComposer
    extends Composer<_$DataBase, $CategoryPrintTable> {
  $$CategoryPrintTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get titlePrint => $composableBuilder(
    column: $table.titlePrint,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get iconKeyPrint => $composableBuilder(
    column: $table.iconKeyPrint,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CategoryPrintTableAnnotationComposer
    extends Composer<_$DataBase, $CategoryPrintTable> {
  $$CategoryPrintTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get titlePrint => $composableBuilder(
    column: $table.titlePrint,
    builder: (column) => column,
  );

  GeneratedColumn<String> get iconKeyPrint => $composableBuilder(
    column: $table.iconKeyPrint,
    builder: (column) => column,
  );
}

class $$CategoryPrintTableTableManager
    extends
        RootTableManager<
          _$DataBase,
          $CategoryPrintTable,
          CategoryPrintData,
          $$CategoryPrintTableFilterComposer,
          $$CategoryPrintTableOrderingComposer,
          $$CategoryPrintTableAnnotationComposer,
          $$CategoryPrintTableCreateCompanionBuilder,
          $$CategoryPrintTableUpdateCompanionBuilder,
          (
            CategoryPrintData,
            BaseReferences<_$DataBase, $CategoryPrintTable, CategoryPrintData>,
          ),
          CategoryPrintData,
          PrefetchHooks Function()
        > {
  $$CategoryPrintTableTableManager(_$DataBase db, $CategoryPrintTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CategoryPrintTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CategoryPrintTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CategoryPrintTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> titlePrint = const Value.absent(),
                Value<String?> iconKeyPrint = const Value.absent(),
              }) => CategoryPrintCompanion(
                id: id,
                titlePrint: titlePrint,
                iconKeyPrint: iconKeyPrint,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String titlePrint,
                Value<String?> iconKeyPrint = const Value.absent(),
              }) => CategoryPrintCompanion.insert(
                id: id,
                titlePrint: titlePrint,
                iconKeyPrint: iconKeyPrint,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CategoryPrintTableProcessedTableManager =
    ProcessedTableManager<
      _$DataBase,
      $CategoryPrintTable,
      CategoryPrintData,
      $$CategoryPrintTableFilterComposer,
      $$CategoryPrintTableOrderingComposer,
      $$CategoryPrintTableAnnotationComposer,
      $$CategoryPrintTableCreateCompanionBuilder,
      $$CategoryPrintTableUpdateCompanionBuilder,
      (
        CategoryPrintData,
        BaseReferences<_$DataBase, $CategoryPrintTable, CategoryPrintData>,
      ),
      CategoryPrintData,
      PrefetchHooks Function()
    >;

class $DataBaseManager {
  final _$DataBase _db;
  $DataBaseManager(this._db);
  $$ExpensePrintTableTableManager get expensePrint =>
      $$ExpensePrintTableTableManager(_db, _db.expensePrint);
  $$CategoryPrintTableTableManager get categoryPrint =>
      $$CategoryPrintTableTableManager(_db, _db.categoryPrint);
}
