import 'dart:math';

import 'package:postgres/postgres.dart';
import 'package:tasks_app/core/db/connect_database.dart';

class PostgresConnect implements ConnectDatabase {
  PostgreSQLConnection? _postgresConnector;

  PostgresConnect(Map<dynamic, dynamic> parameters) {
    _postgresConnector = PostgreSQLConnection(parameters['host'].toString(),
        parameters['port'], parameters['db_name'].toString(),
        username: parameters['db_username'].toString(),
        password: parameters['db_password'].toString());
  }

  @override
  void connect() async {
    try {
      await _postgresConnector!.open();
    } on Exception catch (e) {
      e.runtimeType;
    }
  }

  @override
  void close() {
    _postgresConnector!.close();
  }
}
