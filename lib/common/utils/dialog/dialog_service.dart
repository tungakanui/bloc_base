// import 'package:base_bloc_3/common/index.dart';
// import 'package:base_bloc_3/common/widgets/buttons/custom_text_button.dart';
// import 'package:base_bloc_3/common/widgets/custom_checkbox_widget.dart';
// import 'package:flutter/material.dart';
// todo: implement dialog
// class DialogService {
//   static Future<dynamic> showActionDialog(
//       BuildContext context, {
//         String? leftButtonText,
//         String? rightButtonText,
//         VoidCallback? onPressedLeftButton,
//         VoidCallback? onPressedRightButton,
//         String? description,
//         TextStyle? descriptionTextStyle,
//         TextStyle? leftButtonTextStyle,
//         TextStyle? rightButtonTextStyle,
//       }) {
//     return showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return Dialog(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(8),
//           ),
//           elevation: 0,
//           backgroundColor: Colors.white,
//           child: _DialogWidget(
//             leftButtonTextStyle: leftButtonTextStyle,
//             leftButtonText: leftButtonText,
//             onPressedLeftButton: onPressedLeftButton,
//             description: description,
//             descriptionTextStyle: descriptionTextStyle,
//             rightButtonText: rightButtonText,
//             onPressedRightButton: onPressedRightButton,
//             rightButtonTextStyle: rightButtonTextStyle,
//           ),
//         );
//       },
//     );
//   }
// }
//
// class _DialogWidget extends StatefulWidget {
//   final String? leftButtonText;
//   final String? rightButtonText;
//   final VoidCallback? onPressedLeftButton;
//   final VoidCallback? onPressedRightButton;
//   final String? description;
//   final TextStyle? descriptionTextStyle;
//   final TextStyle? leftButtonTextStyle;
//   final TextStyle? rightButtonTextStyle;
//
//   const _DialogWidget({
//     Key? key,
//     this.leftButtonText,
//     this.rightButtonText,
//     this.onPressedLeftButton,
//     this.onPressedRightButton,
//     this.description,
//     this.descriptionTextStyle,
//     this.leftButtonTextStyle,
//     this.rightButtonTextStyle,
//   }) : super(key: key);
//
//   @override
//   _DialogWidgetState createState() => _DialogWidgetState();
// }
//
// class _DialogWidgetState extends State<_DialogWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           widget.description != null
//               ? Text(widget.description ?? "",
//               textAlign: TextAlign.center,
//               style: widget.descriptionTextStyle ??
//                   AppStyles.h4BodyText14ptRegular)
//               : const SizedBox.shrink(),
//           const SizedBox(
//             height: 20,
//           ),
//           IntrinsicHeight(
//             child: Row(
//               children: [
//                 Expanded(
//                   child: AppButton(
//                     isOutlined: true,
//                     verticalPadding: 0,
//                     title: widget.leftButtonText ?? "OK",
//                     onPressed: () {
//                       widget.onPressedLeftButton?.call();
//                       Navigator.pop(context);
//                     },
//                     borderRadius: 2,
//                     textColor: AppColors.deepDark,
//                     textStyle: widget.leftButtonTextStyle ??
//                         AppStyles.button15ptMedium,
//                   ),
//                 ),
//                 widget.rightButtonText != null
//                     ? const SizedBox(
//                   width: 16,
//                 )
//                     : const SizedBox.shrink(),
//                 widget.rightButtonText != null
//                     ? Expanded(
//                   child: AppButton(
//                     verticalPadding: 0,
//                     title: widget.rightButtonText ?? "",
//                     onPressed: () {
//                       widget.onPressedRightButton?.call();
//                       Navigator.pop(context);
//                     },
//                     borderRadius: 2,
//                     textStyle: widget.leftButtonTextStyle ??
//                         AppStyles.button15ptMedium,
//                   ),
//                 )
//                     : const SizedBox.shrink(),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
