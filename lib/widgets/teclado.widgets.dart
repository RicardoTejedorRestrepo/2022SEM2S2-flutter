import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/boton.models.dart';

Widget Teclado(List<BotonModel> lista){

  List <Widget> listaBotones =[];
  lista.forEach((element){
    listaBotones.add(ElevatedButton(
                        onPressed: element.metodo, 
                        style: TextButton.styleFrom(
                                primary: Color.fromARGB(255, 0, 0, 0),
                                backgroundColor: Color.fromARGB(255, 255, 0, 0),
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0)),
                                minimumSize: Size(100, 40),
                                  ),
                        child: Text(element.titulo, style: TextStyle(fontSize: 30,
                                                            fontWeight: FontWeight.bold,),)));
  });

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: listaBotones
    );
}
