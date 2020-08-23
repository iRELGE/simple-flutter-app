import 'package:flutter/material.dart';
import 'package:testcounterapp/MyHomePage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("test app")), //appBar
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String name;
  final TextEditingController controller = new TextEditingController();
  void click() {
    this.name = this.controller.text;

    Navigator.push(context,
        MaterialPageRoute(builder: (context) => MyHomePage(this.name)));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: TextField(
            controller: this.controller,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.person,
              ),
              labelText: "type Type your Name",
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5, color: Colors.black)),
              suffixIcon: IconButton(
                splashColor: Colors.blue.withOpacity(0.1),
                icon: Icon(Icons.done),
                tooltip: "Submit",
                onPressed: this.click,
              ),
            )),
      ),
    );
  }
}
