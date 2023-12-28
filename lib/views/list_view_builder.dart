import 'package:flutter/material.dart';

class MyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView.builder(
            itemCount: 3,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://images.app.goo.gl/5Ek4mT83uQfmpLsAA"),
              backgroundColor: Colors.yellow,
              radius: 40,
            ),
            title: Text("Hello"),
            subtitle: Text("Gesture for greeting"),
            tileColor: Colors.purple,
          ),
        ),
      )),
    );
  }
}
