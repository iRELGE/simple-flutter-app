import 'package:flutter/material.dart';

class TextInpuWidget extends StatefulWidget {
  final Function(String) callback;
  TextInpuWidget([this.callback]);
  @override
  _TextInpuWidgetState createState() => _TextInpuWidgetState();
}

class _TextInpuWidgetState extends State<TextInpuWidget> {
  final controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void onPressed() {
    setState(() {
      FocusScope.of(context).unfocus();
      widget.callback(controller.text);
      controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: this.controller,
        autocorrect: true,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.message,
          ),
          labelText: "type text",
          suffixIcon: IconButton(
            splashColor: Colors.blue.withOpacity(0.1),
            icon: Icon(Icons.send),
            tooltip: "send msg",
            onPressed: this.onPressed,
          ),
        ));
  }
}
