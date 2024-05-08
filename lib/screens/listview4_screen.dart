import 'package:flutter/material.dart';

class ListView4Screen extends StatelessWidget {
  const ListView4Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ELEMENTOS'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/sharingan.jpg'), // Ruta de la imagen
            fit: BoxFit.cover, // Ajustar la imagen al tamaño del contenedor
          ),
        ),
        child: Center(
          child: ListView(
            children: [
              _buildListItem(Icons.star, 'Elemento 1', context),
              _buildListItem(Icons.star_border, 'Elemento 2', context),
              _buildListItem(Icons.star_half, 'Elemento 3', context),
              _buildListItem(Icons.star_outline, 'Elemento 4', context),
              _buildListItem(Icons.star_rate, 'Elemento 5', context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListItem(IconData icon, String title, BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white, // Cambia el color del icono a blanco
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white, // Cambia el color del texto a blanco
        ),
      ),
      onTap: () {
        // Aquí puedes agregar la lógica para manejar la selección del elemento
        // Por ejemplo, podrías navegar a otra pantalla o realizar alguna acción.
      },
    );
  }
}
