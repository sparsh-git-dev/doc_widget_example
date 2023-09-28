// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class CustomButtonDocWidget implements Documentation {
  @override
  String get name => 'CustomButton';

  @override
  bool get hasState => true;

  @override
  String? get deprecation => null;

  @override
  List<PropertyDoc> get properties => [
        PropertyDoc(
          name: 'alertTitle',
          isRequired: true,
          isNamed: true,
          type: 'String?',
        ),
        PropertyDoc(
          name: 'content',
          isRequired: true,
          isNamed: true,
          type: 'String?',
        ),
        PropertyDoc(
          name: 'okString',
          isRequired: true,
          isNamed: true,
          type: 'String?',
        ),
      ];

  @override
  String get snippet => '''
''';
}
