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

  factory PostgresConfig.fromJson(Map<String, dynamic> json) {
    return PostgresConfig(
        json['host'] as String,
        json['port'] as int,
        json['db_name'] as String,
        json['db_username'] as String,
        json['db_password'] as String);
  }
}
