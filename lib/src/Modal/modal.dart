import 'package:flutter/material.dart';

class Modal extends StatelessWidget {
  final String title;
  final String content;
  final Function submitButton;
  final Function cancelButton;

  Modal({this.title, this.content, this.submitButton, this.cancelButton});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 300.0,
        width: 300.0,
        child: Text('Loading...'),
      ),
    );
  }
}
