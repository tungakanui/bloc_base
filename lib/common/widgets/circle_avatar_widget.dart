import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'cache_image_widget.dart';

class CircleAvatarWidget extends StatelessWidget {
  final String url;
  final double? radius;
  final String title;
  const CircleAvatarWidget({
    Key? key,
    required this.url,
    this.radius,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CachedImageWidget(
          url: url,
          width: (radius ?? 45.w) * 2,
          height: (radius ?? 45.w) * 2,
          shape: BoxShape.circle,
        ),
        SizedBox(
          height: 12.h,
        ),
        Text(
          title,
          //todo: default text style  style: AppStyles.s13w400,
        )
      ],
    );
  }
}
