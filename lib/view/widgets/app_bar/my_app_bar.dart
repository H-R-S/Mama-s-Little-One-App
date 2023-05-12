import 'package:flutter/material.dart';
import '../../../resources/constants/style.dart';

AppBar MyAppBar(GlobalKey<ScaffoldState> key, BuildContext context,
    {bool isBack = false,
    bool isCenter = true,
    Function()? onTapBackButton,
    IconData? actionIcon,
    Function()? onTapAction,
    Widget? bottom,
    Color backButtonColor = Colors.white,
    Color backgroundColor = primay,
    String? title}) {
  return AppBar(
      toolbarHeight: 75,
      elevation: 0,
      backgroundColor: backgroundColor,
      centerTitle: isCenter,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(onPressed: onTapAction, icon: Icon(actionIcon, size: 40)),
        )
      ],
      leading: isBack
          ? BackButton(
              color: backButtonColor,
              onPressed: onTapBackButton ??
                  () {
                    Navigator.pop(context);
                  })
          : null,
      title: Text(title ?? "",
          style: const TextStyle(
              fontSize: 22, color: Colors.white, fontWeight: FontWeight.w500)));
}
