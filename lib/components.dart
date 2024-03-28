import 'package:eshtry/colors/colors.dart';
import 'package:flutter/material.dart';

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigateAndFinish(
  context,
  widget,
) =>
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ),
        (route) => false);
Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUppercase = true,
  double radius = 3.0,
  required Function function,
  required String text,
}) =>
    Container();

Widget defaultTextButton({required onPressed, required String text}) =>
    TextButton(
      onPressed: onPressed,
      child: Text(
        text.toUpperCase(),
        style: defaultTitleTextStyle.copyWith(
            fontSize: 15, color: Colors.deepOrange),
      ),
    );

Widget defaultFormField({
  String? initalValue,
  String? hintText,
  TextStyle? style,
  TextStyle? hintStyle,
  bool? isEnabled,
  @required TextEditingController? controller,
  @required TextInputType? keyboardType,
  Function(String?)? onSubmit,
  var onChanged,
  String? Function(String?)? validate,
  var suffixPressedFuncion,
  String? label,
  IconData? prefixIcon,
  IconData? suffixIcon,
  bool isPassword = false,
}) =>
    TextFormField(
        enabled: isEnabled,
        onSaved: (newValue) {
          onSubmit;
        },
        initialValue: initalValue,
        style: style,
        validator: validate,
        obscureText: isPassword,
        onFieldSubmitted: onSubmit,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintStyle ??
              defaultTitleTextStyle.copyWith(color: Colors.black12),
          border: InputBorder.none,
          label: Text(
            label ?? '',
            style: defaultTitleTextStyle.copyWith(fontSize: 15),
          ),
          prefixIcon: Icon(prefixIcon),
          suffixIcon: IconButton(
            icon: Icon(suffixIcon),
            onPressed: suffixPressedFuncion,
          ),
        ));
