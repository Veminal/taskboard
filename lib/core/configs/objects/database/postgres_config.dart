import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class PostgresConfig {
  PostgresConfig(
      this.host, this.port, this.dbName, this.dbUserName, this.dbPassword);

  String host;
  int port;
  String dbName;
  String dbUserName;
  String dbPassword;

  factory PostgresConfig.fromJson(Map<String, dynamic> parameters) {
    return PostgresConfig(
        parameters['host'] as String,
        parameters['port'] as int,
        parameters['db_name'] as String,
        parameters['db_username'] as String,
        parameters['db_password'] as String);
  }
}
