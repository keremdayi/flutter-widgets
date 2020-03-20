import 'package:flutter/material.dart';

class TwoButtonAppBar extends StatelessWidget with PreferredSizeWidget {
  final Icon leftIcon;
  final Function leftPressed;
  final Icon rightIcon;
  final Function rightPressed;
  final Text title;

  TwoButtonAppBar(
      {@required this.leftIcon,
      @required this.rightIcon,
      @required this.title,
      @required this.leftPressed,
      @required this.rightPressed});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      title: Row(
        children: <Widget>[
          IconButton(
            onPressed: leftPressed,
            icon: leftIcon,
          ),
          Expanded(
            child: Center(child: title),
          ),
          IconButton(
            onPressed: rightPressed,
            icon: rightIcon,
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}