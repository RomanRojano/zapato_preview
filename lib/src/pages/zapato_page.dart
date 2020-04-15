import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zapato_preview/src/widgets/custom_widgets.dart';

class ZapatoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: CustomAppBar(texto:'For You')
      //body: ZapatoSizePreview()
      body: Column(
        children: <Widget>[
          // Estos dos siempre van a caber por eso solo 
          //los siguientes  son los que  se meten al scroll
          CustomAppBar(texto: 'For You'),
          SizedBox(height:20),

          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child:Column(
                children:<Widget> [
                  ZapatoSizePreview(),
                  ZapatoDescripcion(titulo: 'Nike Air Max 720',
                    descripcion: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                ],
              ),
            ),
            ),

            AgregarCarritoBoton(monto: 180.0)
        ],
      ),
    );
  }
}