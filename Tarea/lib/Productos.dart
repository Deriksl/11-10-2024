import 'package:flutter/material.dart';

// Función principal que inicia la ejecución de la aplicación.


class Productos extends StatelessWidget{
  final String usuario;

  Productos ({required this.usuario});


  @override
  Widget build (BuildContext context) {
    return TiendaScreen();
  }
}

// Clase principal de la aplicación que extiende StatelessWidget,
class TiendaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Utiliza un Scaffold para definir la estructura básica de la pantalla,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tienda en Línea'), // Título que aparece en la barra de la aplicación.
        ),
        body: ListView( // ListView permite hacer scroll en una lista de widgets.
          children: [
            // Llama a la función productCard para crear una tarjeta de producto.
            productCard(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEfk_eBFQ-bHC0Z_VGT6scGmdtgMeqfZlzGw&s',
              'Camisa',
              '40.00 Pesos',
              Colors.indigo[50],
            ),
            Divider(), // Crea una línea divisoria entre productos.
            productCard(
              'https://milano.com/cdn/shop/products/1631-531611_Pantalon_Mezclilla_Caballero_Milano_A_800x.jpg?v=1628135350',
              'Pantalones',
              '60.00 Pesos',
              Colors.pink[50],
            ),
            Divider(), // Línea divisoria entre productos.
            productCard(
              'data:image/jpeg;base64,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',
              'Zapatos',
              '80.00 Pesos',
              Colors.purple[50],
            ),
          ],
        ),
      ),
    );
  }

  // Función que crea una tarjeta de producto personalizada.
  Widget productCard(String imageUrl, String description, String price, Color? color) {
    return Container(
      color: color,
      padding: EdgeInsets.all(16.0), // Agrega espacio interno alrededor del contenido.
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // Alinea los elementos hijos al centro.
        children: [
          Image.network(
            imageUrl,
            height: 150,
            width: 150,
          ),
          SizedBox(height: 8),
          Text(
            description,
            style: TextStyle(fontSize: 16), // Tamaño de fuente para la descripción.
          ),
          SizedBox(height: 4), // Espacio entre la descripción y el precio.
          Text(
            price,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), // Precio en negrita.
          ),
        ],
      ),
    );
  }
}

