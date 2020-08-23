import 'package:flutter/material.dart';
import 'package:testcounterapp/post.dart';

import 'PostList.dart';
import 'TextInpuWidget.dart';

class MyHomePage extends StatefulWidget {
  final String name;
  MyHomePage(this.name);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Post> posts = [];
  void onAddPost(String text) {
    setState(() {
      posts.add(new Post(text, widget.name));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("test app")), //appBar
        body: Column(
          children: <Widget>[
            Expanded(child: PostList(this.posts)),
            TextInpuWidget(this.onAddPost),
          ],
        ));
  }
}
