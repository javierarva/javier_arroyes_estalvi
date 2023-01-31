
import 'package:crud_framework/widgets_lib/app_base.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'despesesModel.dart';
import 'ingressosModel.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  var directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);

  Hive.registerAdapter(IngressosModelAdapter());
  await Hive.openBox<IngressosModel>('ingressos');

  Hive.registerAdapter(DespesesModelAdapter());
  await Hive.openBox<DespesesModel>('despeses');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const MyHomePage(title: 'Home'),
        '/ingressos': (context) => IngressosPage(title: 'CRUD Ingressos'),
        '/despeses': (context) => DespesesPage(title: 'CRUD Despeses'),
      },
      onGenerateRoute: (routeSettings) {
        switch (routeSettings.name) {
        }
        return null;
      },
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
  @override
  Widget build(BuildContext context) {
    return const BaseApp(body: Text("CRUD Template"));
  }
}

class IngressosPage extends StatefulWidget {
  const IngressosPage({super.key, required this.title});

  final String title;

  @override
  State<IngressosPage> createState() => _IngressosPage();
}

class _IngressosPage extends State<IngressosPage> {
  final dataController = TextEditingController();
  final categoriaController = TextEditingController();
  final tipusController = TextEditingController();
  final concepteController = TextEditingController();
  final quantitatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children: const [
          Text("CRUD INGRESSOS")
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()async {
          _showMyDialog();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _showMyDialog() {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: const Text('Afegir ingrés'),
              content: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: dataController,
                        decoration: const InputDecoration(
                            hintText: 'Introduiex data',
                            border: OutlineInputBorder()
                        ),
                      ),
                      const SizedBox(height: 20, ),
                      TextFormField(
                        controller: categoriaController,
                        decoration: const InputDecoration(
                            hintText: 'Introduiex categoria',
                            border: OutlineInputBorder()
                        ),
                      ),
                      TextFormField(
                        controller: tipusController,
                        decoration: const InputDecoration(
                            hintText: 'Introduiex tipus',
                            border: OutlineInputBorder()
                        ),
                      ),
                      TextFormField(
                        controller: concepteController,
                        decoration: const InputDecoration(
                            hintText: 'Introduiex concepte',
                            border: OutlineInputBorder()
                        ),
                      ),
                      TextFormField(
                        controller: quantitatController,
                        decoration: const InputDecoration(
                            hintText: 'Introduiex quantitat',
                            border: OutlineInputBorder()
                        ),
                      ),
                    ],
                  )
              ),
              actions: [
                TextButton(onPressed: () {
                  final data = IngressosModel(data: dataController.text, categoria: categoriaController.text, tipus: tipusController.text, concepte: concepteController.text, quantitat: quantitatController.hashCode);
                  Navigator.pop(context);
                }, child: const Text('Afegir')),
                TextButton(onPressed: () {
                  Navigator.pop(context);
                }, child: const Text('Cancelar')),
              ]
          );
        }
    );
  }
}

class DespesesPage extends StatefulWidget {
  const DespesesPage({super.key, required this.title});

  final String title;

  @override
  State<DespesesPage> createState() => _DespesesPage();
}

class _DespesesPage extends State<DespesesPage> {
  final dataController = TextEditingController();
  final categoriaController = TextEditingController();
  final tipusController = TextEditingController();
  final concepteController = TextEditingController();
  final quantitatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children: const [
          Text("CRUD DESPESES")
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()async {
          _showMyDialog();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _showMyDialog() {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: const Text('Afegir despesa'),
              content: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: dataController,
                        decoration: const InputDecoration(
                            hintText: 'Introduiex data',
                            border: OutlineInputBorder()
                        ),
                      ),
                      const SizedBox(height: 20, ),
                      TextFormField(
                        controller: categoriaController,
                        decoration: const InputDecoration(
                            hintText: 'Introduiex categoria',
                            border: OutlineInputBorder()
                        ),
                      ),
                      TextFormField(
                        controller: tipusController,
                        decoration: const InputDecoration(
                            hintText: 'Introduiex tipus',
                            border: OutlineInputBorder()
                        ),
                      ),
                      TextFormField(
                        controller: concepteController,
                        decoration: const InputDecoration(
                            hintText: 'Introduiex concepte',
                            border: OutlineInputBorder()
                        ),
                      ),
                      TextFormField(
                        controller: quantitatController,
                        decoration: const InputDecoration(
                            hintText: 'Introduiex quantitat',
                            border: OutlineInputBorder()
                        ),
                      ),
                    ],
                  )
              ),
              actions: [
                TextButton(onPressed: () {
                  final data = DespesesModel(data: dataController.text, categoria: categoriaController.text, tipus: tipusController.text, concepte: concepteController.text, quantitat: quantitatController.hashCode);
                  Navigator.pop(context);
                }, child: const Text('Afegir')),
                TextButton(onPressed: () {
                  Navigator.pop(context);
                }, child: const Text('Cancelar')),
              ]
          );
        }
    );
  }
}