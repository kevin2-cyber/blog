import 'package:flutter/material.dart';

import '../../core/constants.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_sharp,
                  color: Constants.blueVogue,
                ),
                Text(
                  'Skip',
                  style: TextStyle(
                    color: Constants.blueVogue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
