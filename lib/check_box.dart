import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

/// The `CustomCheckboxListTile` class is a custom implementation of a checkbox list tile in Dart,
/// allowing for customization of the checkbox's value, onChanged callback, label, and color.
@docWidget
class CustomCheckboxListTile extends StatefulWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final String label;
  final Color color;

  CustomCheckboxListTile({
    required this.value,
    required this.onChanged,
    required this.label,
    required this.color,
  });

  @override
  _CustomCheckboxListTileState createState() => _CustomCheckboxListTileState();
}

class _CustomCheckboxListTileState extends State<CustomCheckboxListTile> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: widget.value,
      onChanged: widget.onChanged,
      title: Text(widget.label),
    );
  }
}
