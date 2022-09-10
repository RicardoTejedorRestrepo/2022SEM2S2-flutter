import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/boton.models.dart';

Widget Teclado(List<BotonModel> lista){

  List <Widget> listaBotones =[];
  lista.forEach((element){
    listaBotones.add(ElevatedButton(
                        onPressed: element.metodo, 
                        child: Text(element.titulo, style: TextStyle(fontSize: 30,),)));
  });

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: listaBotones
    );
}
