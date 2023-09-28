import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

@docWidget
class CustomRadioButton extends StatefulWidget {
  final String label;
  final bool value;
  final ValueChanged<bool?> onChanged;

  CustomRadioButton({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Radio<bool>(
          value: widget.value,
          groupValue: true,
          onChanged: widget.onChanged,
        ),
        Text(widget.label),
      ],
    );
  }
}
