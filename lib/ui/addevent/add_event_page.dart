import 'package:flutter/material.dart';
import '../../model/event.dart';
import 'package:provider/provider.dart';

import 'add_event_background.dart';
import 'add_event_content.dart';


class AddEventPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider<Event>.value(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            AddEventContentForm(),
          ],
        ),
      ),

    );
  }

}