import 'package:flutter/material.dart';
import 'package:mentoring_app_totvs/app/components/custom_card_widget.dart';
import 'package:mentoring_app_totvs/app/widgets/custom_pet_shop_scaffold.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomPetShopScaffold(
      bodyScaffold: Column(
        children: const [
          CustomCardWidget(),
        ],
      ),
    );
  }
}
