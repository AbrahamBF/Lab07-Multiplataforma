import 'package:flutter/material.dart';

class Plato {
  final String Nombre;
  final String precio;
  final String imagen;
  
  Plato({required this.Nombre, required this.precio, required this.imagen});
}
  
List<Plato> catList = [
  Plato(
    Nombre: 'Lomo Saltado',
    precio: 'S/30.00',
    imagen: "https://media.istockphoto.com/id/184675312/es/foto/lomo-saltado.jpg?s=2048x2048&w=is&k=20&c=jF1lx_vYH162noNV_SE2GbOySc63z073avRuk-b0ptg="
  ),
  Plato(
    Nombre: 'Causa de Atún',
    precio: 'S/15.00',
    imagen: "https://www.shutterstock.com/shutterstock/photos/1432628588/display_1500/stock-photo-causa-lime-a-peruvian-layered-potato-dish-lemony-mashed-potatoes-layered-with-chicken-sometimes-1432628588.jpg"
  ),
  Plato(
    Nombre: 'Arroz con Pollo',
    precio: 'S/20.00',
    imagen: "https://www.shutterstock.com/shutterstock/photos/1651319335/display_1500/stock-photo-peru-have-the-best-food-in-the-world-rice-egg-potato-fried-chicken-1651319335.jpg"
  ),
  Plato(
    Nombre: 'Ceviche',
    precio: 'S/15.00',
    imagen: "https://www.shutterstock.com/shutterstock/photos/2090292532/display_1500/stock-photo-peruvian-ceviche-traditional-peruvian-food-2090292532.jpg"
  ),
  Plato(
    Nombre: 'Ají de Gallina',
    precio: 'S/12.50',
    imagen: "https://www.shutterstock.com/shutterstock/photos/1852067089/display_1500/stock-photo-aji-de-gallina-grandmother-s-recipe-chicken-breast-pieces-in-yellow-chili-sauce-accompanied-by-1852067089.jpg"
  ),
  Plato(
    Nombre: 'Pollo a la Brasa',
    precio: 'S/10.00',
    imagen: "https://www.shutterstock.com/shutterstock/photos/2423558433/display_1500/stock-photo-chicken-roasted-brasa-pollo-le-a-2423558433.jpg"
  ),
  Plato(
    Nombre: 'Pachamanca',
    precio: 'S/50.00',
    imagen: "https://www.shutterstock.com/shutterstock/photos/2226224167/display_1500/stock-photo-pachamanca-huanuque-a-ancient-peruvian-food-2226224167.jpg"
  ),
  Plato(
    Nombre: 'Frejoles con Pollo a la plancha',
    precio: 'S/10.00',
    imagen: "https://www.shutterstock.com/shutterstock/photos/2020215452/display_1500/stock-photo-chicken-fillet-rice-beans-manioc-flour-and-salad-on-white-background-typical-brazilian-food-2020215452.jpg"
  ),
  Plato(
    Nombre: 'Aguadito',
    precio: 'S/5.00',
    imagen: "https://www.shutterstock.com/shutterstock/photos/2215225655/display_1500/stock-photo-peruvian-food-soup-with-cilantro-carrots-and-chicken-called-aguadito-2215225655.jpg"
  ),
  Plato(
    Nombre: 'Tallarines verdes con milanesa',
    precio: 'S/10.00',
    imagen: "https://www.shutterstock.com/shutterstock/photos/2336617639/display_1500/stock-photo-tallarines-verdes-con-milanesa-green-sauce-pasta-food-buffet-peruvian-table-assorted-dishes-gourmet-2336617639.jpg"
  ),
];


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Platos Tipicos del Perú',
      home: Scaffold(
        appBar: AppBar(
          title: Text('MENÚ DEL RESTAURANTE'),
        ),
        body: ListView.builder(
          itemCount: catList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Image.network(catList[index].imagen),
                title: Text(catList[index].Nombre),
                subtitle: Text(catList[index].precio),
              ),
            );
          },
        ),
      ),
    );
  }
}