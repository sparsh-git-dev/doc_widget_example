import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

@docWidget
class CustomButton extends StatefulWidget {
  final String? alertTitle;
  final String? okString;
  final String? content;

  const CustomButton({
    required this.alertTitle,
    required this.content,
    required this.okString,
  });

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(widget.alertTitle!),
          content: Text(widget.content!),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(widget.okString!),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _showAlertDialog,
      child: Text(widget.alertTitle!),
    );
  }
}
