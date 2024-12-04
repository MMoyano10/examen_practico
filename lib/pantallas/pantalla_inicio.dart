import 'package:flutter/material.dart';
import '../widgets/campo_entrada.dart';
import '../utilidades/calculo_distancia.dart';

class PantallaInicio extends StatelessWidget {
  final TextEditingController controladorX1 = TextEditingController();
  final TextEditingController controladorY1 = TextEditingController();
  final TextEditingController controladorX2 = TextEditingController();
  final TextEditingController controladorY2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Distancia Euclidiana'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text('Ingrese las coordenadas de los puntos:'),
            SizedBox(height: 16),
            CampoEntrada(controlador: controladorX1, etiqueta: 'Punto 1 - X'),
            CampoEntrada(controlador: controladorY1, etiqueta: 'Punto 1 - Y'),
            CampoEntrada(controlador: controladorX2, etiqueta: 'Punto 2 - X'),
            CampoEntrada(controlador: controladorY2, etiqueta: 'Punto 2 - Y'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double x1 = double.tryParse(controladorX1.text) ?? 0;
                double y1 = double.tryParse(controladorY1.text) ?? 0;
                double x2 = double.tryParse(controladorX2.text) ?? 0;
                double y2 = double.tryParse(controladorY2.text) ?? 0;

                double distancia = calcularDistancia(x1, y1, x2, y2);

                Navigator.pushNamed(context, '/resultado', arguments: distancia);
              },
              child: Text('Calcular Distancia'),
            ),
          ],
        ),
      ),
    );
  }
}
