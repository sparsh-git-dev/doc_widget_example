// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class CustomElevatedButtonDocWidget implements Documentation {
  @override
  String get name => 'CustomElevatedButton';

  @override
  bool get hasState => true;

  @override
  String? get deprecation => null;

  @override
  List<PropertyDoc> get properties => [
        PropertyDoc(
          name: 'color',
          isRequired: true,
          isNamed: true,
          type: 'Color',
        ),
        PropertyDoc(
          name: 'text',
          isRequired: true,
          isNamed: true,
          type: 'String',
        ),
        PropertyDoc(
          name: 'padding',
          isRequired: false,
          isNamed: true,
          type: 'EdgeInsetsGeometry',
          defaultValue: 'const EdgeInsets.all(16.0)',
        ),
        PropertyDoc(
          name: 'margin',
          isRequired: false,
          isNamed: true,
          type: 'EdgeInsetsGeometry',
          defaultValue: 'const EdgeInsets.all(0.0)',
        ),
      ];

  @override
  String get snippet => '''
''';
}
