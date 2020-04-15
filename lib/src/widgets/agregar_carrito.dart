import 'package:flutter/material.dart';
import 'package:zapato_preview/src/widgets/custom_widgets.dart';

class AgregarCarritoBoton extends StatelessWidget {
  
  final double monto;

  const AgregarCarritoBoton({this.monto}) ;

  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        child: Container(
          width:double.infinity,
          height:100,
          decoration: BoxDecoration(
            color:Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            children: <Widget>[
              SizedBox(width: 20),
              Text('\$$monto',style:TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              )),
              Spacer(),
              BotonNaranja(texto: 'Agregar Carrito'),
              SizedBox(width:20),
            ],
          ),
        ) ,
      ),
    );
  }
}