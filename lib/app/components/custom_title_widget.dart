import 'package:flutter/material.dart';

class CustomTitleWidget extends StatelessWidget {
  const CustomTitleWidget({
    super.key,
    required this.title,
    this.colorText = Colors.black,
  });
  final String title;
  final Color colorText;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      softWrap: true,
      style: TextStyle(
        color: colorText,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
