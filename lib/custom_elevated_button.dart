import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

@docWidget
class CustomElevatedButton extends StatefulWidget {
  final Color color;
  final String text;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  CustomElevatedButton({
    required this.color,
    required this.text,
    this.padding = const EdgeInsets.all(16.0),
    this.margin = const EdgeInsets.all(0.0),
  });

  @override
  _CustomElevatedButtonState createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: widget.color,
          padding: widget.padding,
        ),
        onPressed: () {
          // Add your onPressed logic here
        },
        child: Text(widget.text),
      ),
    );
  }
}
