import 'package:flutter/material.dart';
import 'listview2_screen.dart'; // Importa el archivo de la pantalla ListView2Screen

class ListView1Screen extends StatelessWidget {
   
  final opciones = const['Personalizar'];

  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AJUSTES'),
        elevation: 2,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/sharingan.jpg'), // Ruta de la imagen
            fit: BoxFit.cover, // Ajustar la imagen al tamaño del contenedor
          ),
        ),
        child: ListView(
          children: opciones.map((e) => ListTile(
            leading: Icon(
              Icons.edit,
              color: Colors.white, // Cambia el color del icono a blanco
            ),
            title: Text(
              e,
              style: TextStyle(
                color: Colors.white, // Cambia el color del texto a blanco
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListView2Screen()),
              );
            },
          )).toList(),
        ),
      ),
    );
  }
}
