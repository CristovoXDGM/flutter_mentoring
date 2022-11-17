import 'package:flutter/material.dart';
import 'package:mentoring_app_totvs/app/components/numb_counter_widget_provider.dart';

class CustomTextDescription extends StatefulWidget {
  const CustomTextDescription({super.key});

  @override
  State<CustomTextDescription> createState() => _CustomTextDescriptionState();
}

class _CustomTextDescriptionState extends State<CustomTextDescription> {
  @override
  Widget build(BuildContext context) {
    final countItems = NumbCounterWidgetProvider.of(context);

    return Container(
      alignment: Alignment.center,
      height: 70,
      color: Colors.amberAccent,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Text(
        'Contagem de itens no carrinho:\n${countItems?.count.toString()}',
        textAlign: TextAlign.center,
      ),
    );
  }
}
