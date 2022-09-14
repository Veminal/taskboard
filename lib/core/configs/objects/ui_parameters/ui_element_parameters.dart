import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class UIElementParameters {
  UIElementParameters(this.sizeCenterFormList, this.borderColor,
      this.buttonColor, this.appBarColor, this.backgroundColor);

  List<int> sizeCenterFormList;
  int borderColor;
  int buttonColor;
  int appBarColor;
  int backgroundColor;

  factory UIElementParameters.fromJson(Map<String, dynamic> parameters) {
    return UIElementParameters(
        parameters['center_form_size'] as List<int>,
        parameters['border_color'] as int,
        parameters['button_color'] as int,
        parameters['app_bar_color'] as int,
        parameters['background_color'] as int);
  }
}
