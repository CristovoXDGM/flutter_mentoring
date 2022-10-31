import 'package:flutter/material.dart';
import 'package:mentoring_app_totvs/app/pages/home_page.dart';

import 'package:mentoring_app_totvs/app/pages/pet_form_page.dart';

class CustomPetShopScaffold extends StatefulWidget {
  const CustomPetShopScaffold({super.key, required this.bodyScaffold});
  final Widget bodyScaffold;
  @override
  State<CustomPetShopScaffold> createState() => _CustomPetShopScaffoldState();
}

class _CustomPetShopScaffoldState extends State<CustomPetShopScaffold> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey.shade100,
        child: ListView(
          children: [
            ListTile(
              title: const Text('Home page'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MyHomePage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Formulario de pet'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PetFormPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Voltar'),
              onTap: () {
                Navigator.of(context).maybePop();
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 100 * 0.9,
        iconTheme: const IconThemeData().copyWith(color: Colors.black),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        shadowColor: Colors.transparent,
        title: Column(
          children: const [
            Text(
              'Title',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Nome do usuario',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: const [
          CircleAvatar(),
          SizedBox(
            width: 30,
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade400,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        height: size.height,
        width: double.infinity,
        child: widget.bodyScaffold,
      ),
    );
  }
}
