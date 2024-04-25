import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Empresa Impacto',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CustomMenu(),
    );
  }
}

class CustomMenu extends StatelessWidget {
  final List<MenuOption> menuOptions = [
    MenuOption(
      title: 'Inicio',
      description: 'Inicio',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/25/25694.png',
    ),
    MenuOption(
      title: 'Perfil',
      description: 'Perfil',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2n0ryiBxZ4hLcEfPyjCLECDaa7lQFg7tMS0wPPmd6eg&s',
    ),
    MenuOption(
      title: 'Mensajes',
      description: 'Message',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/72/72553.png',
    ),
    MenuOption(
      title: 'Llamadas',
      description: 'Descripción de la opción 4',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/40/40316.png',
    ),
    MenuOption(
      title: 'Correo Electronico',
      description: 'Correo Electronico',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/4804/4804075.png',
    ),
    MenuOption(
      title: 'Youtube',
      description: 'Youtube',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/174/174883.png',
    ),
    MenuOption(
      title: 'Contactar',
      description: 'Contactar',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/2903/2903622.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Empresa Impacto'),
      ),
      body: ListView.builder(
        itemCount: menuOptions.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.network(menuOptions[index].imageUrl),
              title: Text(menuOptions[index].title),
              subtitle: Text(menuOptions[index].description),
              onTap: () {
                print('Opción seleccionada: ${menuOptions[index].title}');
              },
            ),
          );
        },
      ),
    );
  }
}

class MenuOption {
  final String title;
  final String description;
  final String imageUrl;

  MenuOption({required this.title, required this.description, required this.imageUrl});
}