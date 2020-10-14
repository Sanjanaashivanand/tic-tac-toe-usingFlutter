import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final title;
  final content;
  final VoidCallback callback;
  final actionText;

  CustomDialog(this.title, this.content, this.callback,
      [this.actionText = "Reset"]);
  @override
  Widget build(BuildContext context) {
    return new AlertDialog(
      title: new Text(
        title,
        textAlign: TextAlign.center,
      ),
      content: new Text(
        content,
        textAlign: TextAlign.center,
      ),
      actions: <Widget>[
        new FlatButton(
            onPressed: callback,
            color: Colors.cyan,
            textColor: Colors.white,
            padding: EdgeInsets.fromLTRB(50, 3.0, 50, 3.0),
            child: new Text(actionText))
      ],
    );
  }
}
