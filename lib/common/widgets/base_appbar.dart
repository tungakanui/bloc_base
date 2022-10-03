import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BaseAppBar extends StatelessWidget {
  final String? title;
  final String? icon;
  final bool? hasBack;
  final Widget? leading;
  final double? elevation;
  final double? leadingWidth;
  final Widget? appBarWidget;
  final PreferredSize? bottom;
  final List<Widget>? actions;
  final double? titleSpacing;
  final Function()? onPressedLeading;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final Color? leadingColor;
  final SystemUiOverlayStyle? systemUiOverlayStyle;
  final bool? backwardsCompatibility;
  final Color? textColor;
  final dynamic result;
  final Widget? leadingIcon;

  const BaseAppBar({
    Key? key,
    this.backgroundColor,
    this.titleSpacing,
    this.title,
    this.icon,
    this.leading,
    this.leadingWidth,
    this.hasBack,
    this.bottom,
    this.leadingColor,
    this.appBarWidget,
    this.textStyle,
    this.textColor,
    this.elevation,
    this.backwardsCompatibility,
    this.actions,
    this.onPressedLeading,
    this.result,
    this.systemUiOverlayStyle,
    this.leadingIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? Colors.white,
      elevation: elevation ?? 0.7,
      leadingWidth: leadingWidth,
      titleSpacing: titleSpacing,
      systemOverlayStyle: systemUiOverlayStyle ?? SystemUiOverlayStyle.dark,
      leading: leading ??
          Visibility(
            visible: hasBack ?? true,
            child: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                if (onPressedLeading != null) {
                  onPressedLeading!();
                } else {
                  context.popRoute(result);
                }
              },
              child: leadingIcon ??
                  Icon(
                    Icons.arrow_back_ios,
                    color:
                        Colors.black, // todo: default color AppColors.primary,
                    size: 22.sp,
                  ), // todo default icon
            ),
          ),
      title: appBarWidget ??
          Text(
            title ?? "",
            style: textStyle, //todo: default text style ?? AppStyles,
          ),
      actions: actions,
      bottom: bottom,
      centerTitle: true,
      // flexibleSpace: Container(
      //     decoration: BoxDecoration(
      //       image:
      //       DecorationImage(image: AssetImage(Res.bg_app_bar), fit: BoxFit.fill),
      //     )),
    );
  }
}
