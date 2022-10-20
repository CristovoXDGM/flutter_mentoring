import 'package:flutter/material.dart';

class CustomFLoatingActionButton extends StatefulWidget {
  const CustomFLoatingActionButton({
    super.key,
    required this.incrementCount,
    this.customButtonColor = Colors.green,
  });

  final Function() incrementCount;
  final Color customButtonColor;

  @override
  State<CustomFLoatingActionButton> createState() => _CustomFLoatingActionButtonState();
}

class _CustomFLoatingActionButtonState extends State<CustomFLoatingActionButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: widget.customButtonColor,
      onPressed: widget.incrementCount,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
