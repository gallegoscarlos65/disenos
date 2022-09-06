import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(color: Colors.blue, icon: Icons.work_outline_outlined, text: 'Cotización',),
            _SingleCard(color: Colors.pinkAccent, icon: Icons.car_rental, text: 'Captura de datos',),
          ]
        ),

          TableRow(
          children: [
            _SingleCard(color: Colors.amberAccent, icon: Icons.search, text: 'Inspeccion',),
            _SingleCard(color: Colors.cyan, icon: Icons.calculate, text: 'Herramientas',),
          ]
        ),

          TableRow(
          children: [
            _SingleCard(color: Colors.greenAccent, icon: Icons.call, text: 'Contacto',),
            _SingleCard(color: Colors.indigo, icon: Icons.document_scanner_outlined, text: 'Politica',),
          ],
          
        ),
        //           TableRow(
        //   children: [
        //     _SingleCard(color: Colors.greenAccent, icon: Icons.call, text: 'Contacto',),
        //     _SingleCard(color: Colors.indigo, icon: Icons.document_scanner_outlined, text: 'Politica',),
        //   ],
          
        // ),

      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  //const _SingleCard({Key? key}) : super(key: key);

  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    required this.icon, 
    required this.color, 
    required this.text});

  @override
  Widget build(BuildContext context) {
    //Corta todo para que nada se salga de su contenedor
    var column = Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: this.color,
                  child: Icon(this.icon, size: 35, color: Colors.white,),
                  radius: 30,
                  
                ),
                SizedBox(height: 10,),
                Text(this.text, style: TextStyle(color: this.color, fontSize: 18),)
              ],
            );
    return _CardBackground(
      child: column);
  }
}


class _CardBackground extends StatelessWidget {
  //const _CardBackground({Key? key}) : super(key: key);
  final Widget child;

  const _CardBackground({
    Key ? key,
   required this.child
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            //margin: EdgeInsets.all(15),
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: this.child,
          ),
        ),
      ),
    );
  }
}