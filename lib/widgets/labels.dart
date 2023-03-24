import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String titulo;
  final String subTitulo;
  final String ruta;

  const Labels(
      {super.key,
      required this.ruta,
      required this.titulo,
      required this.subTitulo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(titulo,
            //(ruta == 'register' ? '¿No tienes cuenta?' : '¿Yatienes cuenta?'),
            style: const TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w300)),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, ruta);
          },
          child: Text(
            //(ruta == 'register' ? 'Crea una ahora!' : 'Ingresar'),
            subTitulo,
            style: TextStyle(
                color: Colors.blue[600],
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}