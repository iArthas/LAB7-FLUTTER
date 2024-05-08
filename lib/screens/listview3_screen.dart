import 'package:flutter/material.dart';
import 'listview4_screen.dart'; // Importa el archivo donde se define ListView4Screen

class ListView3Screen extends StatelessWidget {
  final opciones = const ['Elementos'];

  const ListView3Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OPCIONES'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/sharingan.jpg'), // Ruta de la imagen
            fit: BoxFit.cover, // Ajustar la imagen al tamaño del contenedor
          ),
        ),
        child: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: Text(
              opciones[index],
              style: TextStyle(
                color: Colors.white, // Cambia el color del texto a blanco
              ),
            ),
            leading: const Icon(
              Icons.list,
              color: Colors.white, // Cambia el color del icono a blanco
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListView4Screen()),
              );
            },
          ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: opciones.length,
        ),
      ),
    );
  }
}
