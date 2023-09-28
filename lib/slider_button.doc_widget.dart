// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class CustomSliderButtonDocWidget implements Documentation {
  @override
  String get name => 'CustomSliderButton';

  @override
  bool get hasState => true;

  @override
  String? get deprecation => null;

  @override
  List<PropertyDoc> get properties => [
        PropertyDoc(
          name: 'value',
          isRequired: true,
          isNamed: true,
          type: 'double',
        ),
        PropertyDoc(
          name: 'onChanged',
          isRequired: true,
          isNamed: true,
          type: 'void Function(double)',
        ),
      ];

  @override
  String get snippet => '''
''';
}
