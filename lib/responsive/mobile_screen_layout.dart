import 'package:flutter/material.dart';
import 'package:insatgram_clone/models/user.dart';
import 'package:provider/provider.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    User user = Provider.of(context).getUser;
    return Scaffold(
      body: Center(
        child: Text(user.username),
      ),
    );
  }
}
