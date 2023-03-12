import 'package:fitules/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class FituleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool automaticallyImplyLeading;
  PreferredSizeWidget? bottom;

 FituleAppBar({
    Key? key,
    required this.title,
    this.bottom,
    this.automaticallyImplyLeading = true,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {

    return AppBar(
      backgroundColor: kLightGreen,
      bottom: bottom,
      elevation: 0,
      automaticallyImplyLeading: automaticallyImplyLeading,
      centerTitle: true,
      title: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 28, maxWidth: 300),
        child: Text(
            title,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: kBlack)
            )
        ),

    );
  }
}