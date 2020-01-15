import 'package:flutter/material.dart';

import './../components/Drawer.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _chatKey = GlobalKey<FormState>(debugLabel: '_Chat');

    return Scaffold(
      key: _chatKey,
      appBar: AppBar(
        title: Text('Chat'),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go back'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      drawer: DrawerComponent(),
    );
  }
}
