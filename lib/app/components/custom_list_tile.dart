import 'package:flutter/material.dart';
import 'package:mentoring_app_totvs/app/components/numb_counter_widget_provider.dart';

class CustomListTile extends StatefulWidget {
  const CustomListTile({super.key, required this.itemName});
  final String itemName;
  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    final numProvider = NumbCounterWidgetProvider.of(context);

    return Container(
      color: Colors.green,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        trailing: const Icon(Icons.mail),
        title:
            Text(' Nome ${widget.itemName} e Contador:${numProvider?.count.toString()} '),
      ),
    );
  }
}
