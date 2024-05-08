import 'package:flutter/material.dart';
import 'listview3_screen.dart'; // Importa el archivo donde se define ListView3Screen

class ListView2Screen extends StatelessWidget {
  final opciones = const ['Opciones'];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PERSONALIZAR'),
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
            leading: Icon(
              Icons.settings,
              color: Colors.white, // Cambia el color del icono a blanco
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListView3Screen()),
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
