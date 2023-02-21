import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool notification;
  final bool info;
  const AppBarWidget({
    Key? key,
    this.info = false,
    this.notification = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset('assets/icons/logo.png'),
      actions: [
        GestureDetector(
          onTap: () {
            debugPrint('Bell img tapped');
          },
          child: Image.asset('assets/icons/bell.png'),
        ),
        if (info)
          GestureDetector(
            onTap: () {
              debugPrint('Warning img tapped');
            },
            child: Image.asset('assets/icons/warning.png'),
          ),
        GestureDetector(
          onTap: () {
            debugPrint('Profile img tapped');
          },
          child: Image.asset('assets/icons/profile.png'),
        ),
      ],
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
