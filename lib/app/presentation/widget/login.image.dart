import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/assets.dart';


class LoginImage extends StatelessWidget {
  const LoginImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage(Assets.login),
                fit: BoxFit.fill,
              )),
        ),
         BackdropFilter(
           filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
           child: Container(
             height: MediaQuery.of(context).size.height * 0.5,
             width: MediaQuery.of(context).size.width * 0.9,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               color: Colors.black.withAlpha(60),
             ),
           ),
         ),
         Positioned(
          top: MediaQuery.of(context).size.height * 0.36,
          left: 20,
          child: const Text(
            'Sign in\noptions.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
