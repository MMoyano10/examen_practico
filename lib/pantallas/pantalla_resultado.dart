import 'package:flutter/material.dart';

class PantallaResultado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtener el argumento pasado (la distancia)
    final double distancia = ModalRoute.of(context)?.settings.arguments as double;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Resultado',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Título
              Text(
                'La distancia entre los puntos es:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.teal,
                ),
              ),
              SizedBox(height: 20),

              // Resultado en grande
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                decoration: BoxDecoration(
                  color: Colors.teal.shade50,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      '${distancia.toStringAsFixed(2)} unidades',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal.shade700,
                      ),
                    ),
                    SizedBox(height: 10),
                    Icon(
                      Icons.check_circle_outline,
                      color: Colors.teal.shade700,
                      size: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
