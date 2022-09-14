import 'dart:math';

import 'package:postgres/postgres.dart';
import 'package:tasks_app/core/configs/objects/database/postgres_config.dart';
import 'package:tasks_app/core/db/connect_database.dart';

class PostgresConnect implements ConnectDatabase {
  PostgreSQLConnection? _postgresConnector;

  PostgresConnect(final PostgresConfig postgresConfig) {
    _postgresConnector = PostgreSQLConnection(
        postgresConfig.host, postgresConfig.port, postgresConfig.dbName,
        username: postgresConfig.dbUserName,
        password: postgresConfig.dbPassword);
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
