import 'package:flutter/material.dart';
import 'package:mentoring_app_totvs/app/module/custom_floating_action_button.dart';
import 'package:mentoring_app_totvs/app/module/custom_list_tile.dart';
import 'package:mentoring_app_totvs/app/module/custom_title_widget.dart';
import 'package:mentoring_app_totvs/app/module/numb_counter_widget_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
          title:
              'Totvs mentoria,Totvs mentoriaTotvs mentoria,Totvs mentoriaTotvs mentoria,Totvs mentoriaTotvs mentoria,Totvs mentoriaTotvs mentoria,Totvs mentoria'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  List<String> listNomes = [
    'Roni',
    'Raiane',
    'Leticia',
    'Joao',
    'Wagner',
    'Luiz',
    'Matheus(Capucho)',
    'Raiane',
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: CustomTitleWidget(title: 'Titulo totvs', colorText: Colors.green.shade900),
      ),
      body: NumbCounterWidgetProvider(
        count: _counter,
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: listNomes.map((item) {
                  return CustomListTile(itemName: item);
                }).toList(),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: CustomFLoatingActionButton(
        incrementCount: _incrementCounter,
      ),
    );
  }
}
