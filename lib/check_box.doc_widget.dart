// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class CustomCheckboxListTileDocWidget implements Documentation {
  @override
  String get name => 'CustomCheckboxListTile';

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
          type: 'bool',
        ),
        PropertyDoc(
          name: 'onChanged',
          isRequired: true,
          isNamed: true,
          type: 'void Function(bool?)',
        ),
        PropertyDoc(
          name: 'label',
          isRequired: true,
          isNamed: true,
          type: 'String',
        ),
        PropertyDoc(
          name: 'color',
          isRequired: true,
          isNamed: true,
          type: 'Color',
        ),
      ];

  @override
  String get snippet => '''
''';
}
