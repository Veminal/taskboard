import 'package:tasks_app/core/configs/abstract_configuration_file_parser.dart';
import 'package:tasks_app/core/configs/config_root_parser.dart';
import 'package:tasks_app/main.dart';

class JsonConfigRootParser implements ConfigRootParser<Map> {
  @override
  Future<Map> parseRoot(
      String path, AbstractConfigurationFileParser parser) async {
    parser.setListWithPathesToFile = path;
    Map rootMap = await parser.parse();
    return rootMap;
  }
}
