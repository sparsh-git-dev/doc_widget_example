import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

@docWidget
class CustomSliderButton extends StatefulWidget {
  final double value;
  final ValueChanged<double> onChanged;

  CustomSliderButton({
    required this.value,
    required this.onChanged,
  });

  @override
  _CustomSliderButtonState createState() => _CustomSliderButtonState();
}

class _CustomSliderButtonState extends State<CustomSliderButton> {
  @override
  Widget build(BuildContext context) {
    return Slider(
      value: widget.value,
      onChanged: widget.onChanged,
    );
  }
}
