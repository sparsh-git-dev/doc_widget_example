import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

@docWidget
class SignInScreen extends StatefulWidget {
  const SignInScreen({
    Key? key,
    required this.id,
    required this.password,
    this.isTrue,
  }) : super(key: key);
  final String id;
  final String password;
  final String? isTrue;

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            color: Colors.black,
          ),
          Container(
            height: 1200,
            color: Colors.green,
          ),
          Container(
            height: 300,
            color: Colors.blue,
          ),
          Row(
            children: [
              Container(
                height: 100,
                color: Colors.black,
              ),
              Container(
                height: 1200,
                color: Colors.green,
              ),
              Container(
                height: 300,
                color: Colors.blue,
              ),
            ],
          )
        ],
      ),
    );
  }
}
