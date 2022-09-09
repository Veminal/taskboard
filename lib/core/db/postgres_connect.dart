import 'dart:math';

import 'package:postgres/postgres.dart';
import 'package:tasks_app/core/db/connect_database.dart';

class PostgresConnect implements ConnectDatabase {
  @override
  void connect(Map<dynamic, dynamic> parameters) {
    var postgresConnecter = PostgreSQLConnection(
        parameters['host'], parameters['port'], parameters['db_name'],
        username: parameters['db_username'],
        password: parameters['db_password']);
    try {
      postgresConnecter.open();
    } on Exception catch (e) {
      e.runtimeType;
    }
  }
}
