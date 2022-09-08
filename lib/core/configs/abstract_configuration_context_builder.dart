import 'package:tasks_app/core/configs/abstract_configuration_file_parser.dart';

abstract class AbstractConfigurationContextBuilder<T> {
  void addParser(AbstractConfigurationFileParser abstractConfigParser);
  Future<T> buildContext(Map initParams);
}
