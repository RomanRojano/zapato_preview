import 'package:flutter/material.dart';

class ZapatoSizePreview extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal:30.0,
        vertical: 5,
      ),
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(
          color: Color(0xffffcf53),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: <Widget>[
            // Zapato con su sombra
            _ZapatoConSombra(),

            _ZapatoTallas()
          ],
        )
      ),
    );
  }
}

class _ZapatoTallas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget> [
          _TallaZapatoCaja( 7),
          _TallaZapatoCaja( 7.5),
          _TallaZapatoCaja( 8),
          _TallaZapatoCaja( 8.5),
          _TallaZapatoCaja( 9),
          _TallaZapatoCaja( 9.5),
        ]
      ),
    );
  }
}

class _TallaZapatoCaja extends StatelessWidget {
  
final double numero;

  const _TallaZapatoCaja(this.numero);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('${numero.toString().replaceAll('.0', '')}',style:TextStyle(
        color: (this.numero == 9) ? Colors.white : Colors.orange,
        fontSize: 16,
        fontWeight:  FontWeight.bold,
      )),
      width:45,
      height: 45,
      decoration: BoxDecoration(
        color: (this.numero == 9) ? Color(0xfff1a23a) : Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          if (this.numero == 9)
            BoxShadow(color:Color(0xfff1a23a),blurRadius: 10, offset: Offset(0,5))
        ]
      ),
    );
  }
}


class _ZapatoConSombra extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //Se uso el Stack porque un widget esta ENCIMA DEL OTRO
    return Padding(
      padding: EdgeInsets.all(50),
      child: Stack(            
        children: <Widget>[
          //son como capas , los primeros estan 
          // por encima de los siguientes, por eso va primero la sombra
          
          Positioned(
            // pone la sombra en la posicion indicada 
            bottom:5,
            right: 0,
            child: _ZapatoSombra(),
          ),

          Image(
            image: AssetImage('assets/imgs/azul.png'),
          ),

        ],
      ),
    );
  }
} 



class _ZapatoSombra extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
        angle:-0.5,
        child: Container(
        width: 190,
        height: 120,
        decoration: BoxDecoration(
          //color: Colors.red,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(color:Color(0xffeaa14e), blurRadius: 40), 
          ],
        ),
      ),
    );
  }
}