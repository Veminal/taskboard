import 'dart:convert';
import 'dart:html' as webFile;
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';
import 'package:tasks_app/core/configs/abstract_configuration_file_parser.dart';

class JsonConfigurationFileParser extends AbstractConfigurationFileParser {
  @override
  Future<Map> parse() async {
    var fileForParsing;
    Map? resultMap;
    try {
      if (kIsWeb) {
        fileForParsing =
            await webFile.HttpRequest.request(patchToConfigFilesList!);
        resultMap =
            jsonDecode(fileForParsing.response).cast(Map<String, dynamic>);
      } else {
        fileForParsing = await File(patchToConfigFilesList!).readAsString();
        resultMap = jsonDecode(fileForParsing).cast(Map<String, dynamic>);
      }
    } on Exception catch (e) {
      Logger logger = Logger("JsonConfigParserLoger");
      logger.shout(e);
    }
    return resultMap!;
  }
}
