// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class SignInScreenDocWidget implements Documentation {
  @override
  String get name => 'SignInScreen';

  @override
  bool get hasState => true;

  @override
  String? get deprecation => null;

  @override
  List<PropertyDoc> get properties => [
        PropertyDoc(
          name: 'key',
          isRequired: false,
          isNamed: true,
          type: 'Key?',
        ),
        PropertyDoc(
          name: 'id',
          isRequired: true,
          isNamed: true,
          type: 'String',
        ),
        PropertyDoc(
          name: 'password',
          isRequired: true,
          isNamed: true,
          type: 'String',
        ),
        PropertyDoc(
          name: 'isTrue',
          isRequired: false,
          isNamed: true,
          type: 'String?',
        ),
      ];

  @override
  String get snippet => '''
''';
}
