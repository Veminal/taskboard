import 'package:tasks_app/core/configs/abstract_configuration_file_parser.dart';

abstract class ConfigRootParser<T> {
  Future<T> parseRoot(String path, AbstractConfigurationFileParser parser);
}
