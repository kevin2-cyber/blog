import 'package:flutter/material.dart';

import '../../../core/constants.dart';

class RibbonButton extends StatelessWidget {

  final String title;
  final Color color;
  final Color txtColor;
  final Function() onTap;
  final Icon? icon;

  const RibbonButton(
      this.onTap,
      this.color,
      this.title,
      this.txtColor,
      {this.icon, super.key,});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      minWidth: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.06,
      shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon as Widget,
          SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: TextStyle(
                color: txtColor,
                fontSize: 10,
            ),
          )
        ],
      ),
    );
  }
}
