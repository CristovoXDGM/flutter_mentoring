import 'package:ds_mentoria_totvs/ds_mentoria_totvs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mentoring_app_totvs/app/core/constants/routes.dart';

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
              onTap: () => Modular.to.popAndPushNamed(AppRoutes.rootRout),
            ),
            ListTile(
                title: const Text('Formulario de pet'),
                onTap: () => Modular.to.popAndPushNamed(
                      AppRoutes.petFormPage,
                    )),
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
      body: CustomPetBodyScaffold(
        height: size.height,
        width: double.infinity,
        defaultBodyColor: AppColors().primaryColors[AppColorKeys.primaryColorLight]['1'],
        child: widget.bodyScaffold,
      ),
    );
  }
}
