import 'dart:collection';
import 'dart:io';

import 'package:tasks_app/core/configs/abstract_configuration_context_builder.dart';
import 'package:tasks_app/core/configs/abstract_configuration_file_parser.dart';
import 'package:tasks_app/core/configs/json_configuration_file_parser.dart';

class MapConfigurationContextBuilder
    implements AbstractConfigurationContextBuilder<Map> {
  var _configParser;
  @override
  void addParser(AbstractConfigurationFileParser abstractConfigParser) =>
      _configParser = abstractConfigParser;

  @override
  Future<Map> buildContext(Map initParams) async {
    Map context = HashMap();
    initParams.entries.forEach((path) async {
      _configParser.setListWithPathesToFile = path.value;
      Map temp = await _configParser.parse();
      context.addAll(temp);
    });
    return context;
  }
}
