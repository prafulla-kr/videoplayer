import 'dart:async';

import 'package:flutter/material.dart';
import 'package:videoplayer/screens/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/services/auth.dart';
import 'package:videoplayer/models/user.dart';


void main() => runApp(VideoPlayerApp());

class VideoPlayerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );

  }
}
