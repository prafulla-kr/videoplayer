import 'package:flutter/material.dart';
import 'package:videoplayer/screens/home/home.dart';
import 'package:videoplayer/screens/authenticate/authenticate.dart';
import 'package:videoplayer/models/user.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);

    // return either the Home or Authenticate widget
    if (user == null){
      return Authenticate();
    } else {
      return Home();
    }
  }
}
