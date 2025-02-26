import 'package:flutter/material.dart';

void main() => runApp(MisIconos());

class MisIconos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Karla Balderrama Mat:22308051281149',
              style: TextStyle(fontSize: 18)),
          backgroundColor: Color(0xff93c7f2),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Centra las filas verticalmente
            children: <Widget>[
              // Primera fila
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Centra los iconos en la fila
                children: <Widget>[
                  _buildIconWithSubtitle(Icons.star, 'Favorito', Colors.yellow),
                  SizedBox(width: 20), // Espacio entre los iconos
                  _buildIconWithSubtitle(
                      Icons.favorite, 'Me gusta', Colors.red),
                  SizedBox(width: 20), // Espacio entre los iconos
                  _buildIconWithSubtitle(
                      Icons.book, 'Libro', Color(0xff36e7f4)),
                ],
              ),
              SizedBox(height: 20), // Espacio entre las filas
              // Segunda fila
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Centra los iconos en la fila
                children: <Widget>[
                  _buildIconWithSubtitle(Icons.thumb_up, 'Like', Colors.blue),
                  SizedBox(width: 20), // Espacio entre los iconos
                  _buildIconWithSubtitle(
                      Icons.account_box_sharp, 'Perfil', Color(0xff020101)),
                  SizedBox(width: 20), // Espacio entre los iconos
                  _buildIconWithSubtitle(Icons.menu, 'Menu', Colors.black),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Método para construir un ícono con subtítulo y color personalizado
  Widget _buildIconWithSubtitle(IconData icon, String subtitle, Color color) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 50.0, color: color), // Aplica el color al ícono
        SizedBox(height: 8), // Espacio entre el ícono y el subtítulo
        Text(subtitle, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
