import 'package:contatos_flutter/configs/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget getFormField(TextEditingController controller, {
  double? marginBottom,
  double? width,
  InputDecoration? decoration,
  TextStyle? style,
  bool? showBorder,
  String? labelText,
  String? hintText,
  Widget? suffixIcon,
  Widget? prefixIcon,
  EdgeInsetsGeometry? contentPadding,
  bool? filled,
  Color? fillColor,
  TextInputType? keyboardType,
  TextInputAction? textInputAction,
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
  TextAlign? textAlign,
  bool? autoFocus,
  bool? readOnly,
  bool? obscureText,
  bool? autocorrect,
  void Function(String)? onChanged,
  String? Function(String?)? validator,
  List<TextInputFormatter>? inputFormatters,
  int? minLines,
  int? maxLines,
}) {
  return Container(
    padding: EdgeInsets.only(bottom: marginBottom ?? SizeConfig.spacingDefault),
    width: width,
    child: TextFormField(
      controller: controller,
      decoration: decoration ??
          InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
              borderRadius: BorderRadius.circular(SizeConfig.radiusSmall),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400, width: 1.0),
              borderRadius: BorderRadius.circular(SizeConfig.radiusSmall),
            ),
            fillColor: Colors.grey[200],
            filled: true,
            labelText: labelText,
            hintText: hintText,
            labelStyle: TextStyle(color: Colors.grey[500]),
            hintStyle: TextStyle(color: Colors.grey[500]),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            contentPadding: contentPadding ?? const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          ),
      keyboardType: keyboardType ?? TextInputType.text,
      textInputAction: textInputAction ?? TextInputAction.next,
      textAlign: textAlign ?? TextAlign.left,
      autofocus: autoFocus ?? false,
      readOnly: readOnly ?? false,
      obscureText: obscureText ?? false,
      autocorrect: autocorrect ?? false,
      onChanged: onChanged,
      validator: validator,
      inputFormatters: inputFormatters ?? [],
      autovalidateMode: AutovalidateMode.onUserInteraction,
      minLines: minLines ?? 1,
      maxLines: maxLines ?? 1,
    ),
  );
}
