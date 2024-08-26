import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trip_expance_manager/Utils/Styling/AppColors.dart';

/*
Changes : Interchanged suffix icon and suffix widget
 */
class AppTextFormField extends StatefulWidget {
  const AppTextFormField(
      {Key? key,
      this.onChanged,
      this.hintTextColor = AppColors.black,
      this.maxLine = 1,
      this.label,
      required this.hintText,
      this.txtAlign = TextAlign.start,
      this.obscureText = false,
      this.suffixWidget,
      this.controller,
      this.focusNode,
      this.sideButton,
      this.validator,
      this.suffixStyle,
      this.suffixIcon,
      this.autoFocus = false,
      this.textInputAction = TextInputAction.go,
      this.textCapitalization = TextCapitalization.words,
      this.onEditingComplete,
      this.onFieldSubmitted,
      this.autoCorrect = false,
      this.isFilled,
      this.errorTxt,
      this.inputFormatters,
      this.keyboardType,
      this.fontSize = 12,
      this.fontWeight = FontWeight.w500,
      this.cursorColor,
      this.prefixIcon,
      this.expands = false,
      this.fillColor = AppColors.white,
      this.borderWidth = 1.0,
      this.borderStyle = BorderStyle.solid,
      this.readOnly = false,
      this.maxLength,
      this.contentPadding,
      this.isValid,
      this.textColor = AppColors.black,
      this.border,
      this.enabledBorder,
      this.focusedBorder,
      this.borderColor,
      this.borderRadius,
      this.ontapOutside,
      this.hintTextSize = 14,
      this.isPassword})
      : super(key: key);

  final Function(dynamic val)? onChanged;
  final String hintText;
  final double hintTextSize;
  final TextInputType? keyboardType;
  final Function()? onEditingComplete;
  final Function(String val)? onFieldSubmitted;
  final Function(PointerDownEvent val)? ontapOutside;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final TextAlign txtAlign;
  final bool obscureText;
  final bool autoCorrect;
  final String? label;
  final bool expands;
  final bool autoFocus;
  final bool? isFilled;
  final Widget? suffixWidget;
  final Widget? suffixIcon;
  final String? errorTxt;
  final TextStyle? suffixStyle;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Widget? sideButton;
  final String? Function(String?)? validator;
  final double fontSize;
  final int? maxLength;
  final FontWeight fontWeight;
  final Color? cursorColor;
  final Color? hintTextColor;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? prefixIcon;
  final Color fillColor;
  final double borderWidth;
  final Color? borderColor;
  final BorderStyle borderStyle;
  final bool readOnly;
  final Color textColor;
  final EdgeInsets? contentPadding;
  final bool? isValid;
  final bool? isPassword;
  final int? maxLine;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final double? borderRadius;

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      expands: widget.expands,
      textAlign: widget.txtAlign,
      enabled: !widget.readOnly,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText:
          widget.isPassword != null ? !showPassword : widget.obscureText,
      focusNode: widget.focusNode,
      autofocus: widget.autoFocus,
      cursorColor: widget.cursorColor,
      maxLength: widget.maxLength,
      maxLines: widget.maxLine,
      style: TextStyle(
          color: widget.textColor,
          fontSize: widget.fontSize.sp,
          fontWeight: widget.fontWeight,
          overflow: TextOverflow.ellipsis),
      textInputAction: widget.textInputAction,
      textCapitalization: widget.textCapitalization,
      readOnly: widget.readOnly,
      decoration: InputDecoration(
        counterText: "",
        enabledBorder: _getOutlineBorder(),
        border: _getOutlineBorder(),
        focusedBorder: _getOutlineFocuseBorder(),
        errorStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
        prefixIcon: widget.isValid != null
            ? (widget.isValid!
                ? const Icon(
                    Icons.check,
                    color: AppColors.success,
                  )
                : const Icon(
                    Icons.close,
                    color: AppColors.error,
                  ))
            : widget.prefixIcon,
        contentPadding: widget.contentPadding ??
            EdgeInsets.only(top: 0, bottom: 15.h, left: 20.w),

        // isDense: true,
        errorText: widget.errorTxt,
        icon: widget.sideButton,
        suffix: widget.suffixWidget,
        // previously it was suffixIcon
        suffixIcon: widget.isPassword != null
            ? InkWell(
                onTap: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
                child: Icon(
                  showPassword ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.primary,
                  size: 28,
                ))
            : widget.suffixIcon,
        // previously it was suffixWidget
        suffixStyle: widget.suffixStyle,
        filled: true,
        alignLabelWithHint: true,
        hintText: widget.hintText.tr,
        // label: AppTextWidget(
        //   txtTitle: label ?? hintText,
        //   fontSize: 12,
        //   txtColor: hintTextColor ?? AppColors.hintText,
        // ),
        // floatingLabelAlignment: FloatingLabelAlignment.start,
        // floatingLabelBehavior: FloatingLabelBehavior.auto,
        // hintText: hintText,
        hintStyle: TextStyle(
            color: widget.hintTextColor ?? AppColors.black,
            fontSize: widget.hintTextSize,
            fontWeight: FontWeight.w400),
        fillColor: widget.fillColor,
      ),
      onChanged: widget.onChanged,
      onEditingComplete: widget.onEditingComplete,
      onFieldSubmitted: widget.onFieldSubmitted,
      autocorrect: widget.autoCorrect,
      validator: widget.validator,
      inputFormatters: widget.inputFormatters,
      onTapOutside: widget.ontapOutside ??
          (value) {
            FocusScope.of(context).unfocus();
          },
    );
  }

  InputBorder _getOutlineBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 10.r),
        borderSide: BorderSide(
            style: widget.borderStyle,
            color: widget.borderColor ?? AppColors.black.withOpacity(0.1),
            width: widget.borderWidth));
  }

  InputBorder _getOutlineFocuseBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 10.r),
        borderSide: BorderSide(
            style: widget.borderStyle,
            color: widget.borderColor ?? AppColors.black.withOpacity(0.1),
            width: widget.borderWidth));
  }
}
