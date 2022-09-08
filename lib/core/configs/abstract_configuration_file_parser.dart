abstract class AbstractConfigurationFileParser {
  String? patchToConfigFilesList;

  set setListWithPathesToFile(final String path) =>
      patchToConfigFilesList = path;

  Future<Map> parse();
}
