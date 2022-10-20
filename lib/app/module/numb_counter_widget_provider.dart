import 'package:flutter/material.dart';

class NumbCounterWidgetProvider extends InheritedWidget {
  // ignore: annotate_overrides, overridden_fields
  final Widget child;
  final int count;

  const NumbCounterWidgetProvider({this.count = 0, required this.child, super.key})
      : super(child: child);

  static NumbCounterWidgetProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<NumbCounterWidgetProvider>();
  }

  @override
  bool updateShouldNotify(NumbCounterWidgetProvider oldWidget) {
    return count != oldWidget.count;
  }
}
