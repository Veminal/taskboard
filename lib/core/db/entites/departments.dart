import 'dart:ffi';

import 'package:angel3_framework/angel3_framework.dart';
import 'package:angel3_orm/angel3_orm.dart';

@orm
abstract class Departments {
  @Column(type: ColumnType.bigInt)
  int get id;
  @Column(type: ColumnType.varChar)
  String get name;
}
