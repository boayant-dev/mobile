import 'package:boayant/core/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.title, this.iconButton})
      : super(key: key);

  final String title;
  final IconButton? iconButton;

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return customAppBar();
  }

  AppBar customAppBar() {
    return AppBar(
      elevation: 5,
      centerTitle: true,
      leading: Builder(
        builder: (BuildContext context) {
          return iconButton!;
        },
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          color: Constants.boayantBlue,
        ),
      ),
    );
  }
}
