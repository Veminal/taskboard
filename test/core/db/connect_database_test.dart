import 'package:postgres/postgres.dart';
import 'package:tasks_app/core/configs/objects/database/postgres_config.dart';
import 'package:test/test.dart';

void main() {
  test("Test connect database with Angel3", () async {
    Map<String, dynamic> configMap = {
      "host": "localhost",
      "port": 5432,
      "db_name": "board_db",
      "db_username": "postgres",
      "db_password": ""
    };
    var postgresParameters = PostgresConfig.fromJson(configMap);
    var connection = PostgreSQLConnection(postgresParameters.host,
        postgresParameters.port, postgresParameters.dbName);
    try {
      await connection.open();
    } on Exception catch (e) {
      print(e.toString());
    }
    connection.close();
  });
}
