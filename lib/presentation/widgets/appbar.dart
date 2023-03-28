import 'package:fitules/core/constants/color_constants.dart';
import 'package:fitules/core/utils/size_config/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FituleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool automaticallyImplyLeading;
  PreferredSizeWidget? bottom;
  String? leading;
  bool? hasBackgroundColor;
  Color? backgroundColor;
  TextStyle? textStyle;
  Widget? action;
  bool? hasAction;


 FituleAppBar({
    Key? key,
    required this.title,
    this.bottom,
    this.automaticallyImplyLeading = true,
   this.leading,
   this.hasBackgroundColor,
   this.backgroundColor,
   this.textStyle,
   this.hasAction,
   this.action
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(66.h);

  @override
  Widget build(BuildContext context) {

    return AppBar(
      backgroundColor: hasBackgroundColor == true ? backgroundColor: kLightGreen,
      bottom: bottom,
      elevation: 0,
      actions:[ hasAction ==true ?action! : Container()],
      leading: GestureDetector(
    onTap: (){Navigator.pop(context);},
    child:Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
          child:SvgPicture.asset(leading ?? ""))),
      automaticallyImplyLeading: automaticallyImplyLeading,
      centerTitle: true,
      title: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 28, maxWidth: 300),
        child: Text(
            title,
            style: hasBackgroundColor == true ? textStyle:const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: kBlack)
            )
        ),

    );
  }
}