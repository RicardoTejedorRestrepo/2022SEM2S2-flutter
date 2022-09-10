import 'package:calculadora/models/boton.models.dart';
import 'package:flutter/material.dart';

import '../widgets/teclado.widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String resultado ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora"),),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              color: Colors.red,
              child: Row(
                children: [
                  Text("Operaciones", style: TextStyle(
                    color: Color.fromRGBO(20, 8, 95, 0),
                    fontSize: 20),),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            color: Colors.green,
            child: Row(
              children: [
                Text(resultado, style: TextStyle(color: Colors.white, fontSize: 50),),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: 100,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Teclado([
                    BotonModel(titulo: "%", metodo: (){print("porcentaje");}),
                    BotonModel(titulo: "CE", metodo: (){print("limpiar todo");}),
                    BotonModel(titulo: "C", metodo: (){
                      setState(() {
                        resultado = "";
                      });
                      print("limpiar");}),
                    BotonModel(titulo: "<x", metodo: (){print("borrar");}),
                  ]),
                  Teclado([
                    BotonModel(titulo: "1/x", metodo: (){print("inversa");}),
                    BotonModel(titulo: "x²", metodo: (){print("elevado");}),
                    BotonModel(titulo: "√", metodo: (){print("raiz");}),
                    BotonModel(titulo: "/", metodo: (){print("divicion");}),
                  ]),
                  Teclado([
                    BotonModel(titulo: "7", metodo: (){print("siete");}),
                    BotonModel(titulo: "8", metodo: (){print("ocho");}),
                    BotonModel(titulo: "9", metodo: (){print("nueve");}),
                    BotonModel(titulo: "X", metodo: (){print("por");}),
                  ]),
                  Teclado([
                    BotonModel(titulo: "4", metodo: (){print("cuatro");}),
                    BotonModel(titulo: "5", metodo: (){print("cinco");}),
                    BotonModel(titulo: "6", metodo: (){print("seix");}),
                    BotonModel(titulo: "-", metodo: (){print("menos");}),
                  ]),
                  Teclado([
                    BotonModel(titulo: "1", metodo: (){
                      setState(() {
                        resultado += "1";
                      });
                      print("uno");}),
                    BotonModel(titulo: "2", metodo: (){
                      setState(() {
                        resultado += "2";
                      });
                      print("dos");}),
                    BotonModel(titulo: "3", metodo: (){
                      setState(() {
                        resultado += "3";
                      });
                      print("tre");}),
                    BotonModel(titulo: "+", metodo: (){
                      setState(() {
                        resultado += "+";
                      });
                      print("mas");}),
                  ]),
                  Teclado([
                    BotonModel(titulo: "+/-", metodo: (){print("mas o menos");}),
                    BotonModel(titulo: "0", metodo: (){print("cero");}),
                    BotonModel(titulo: ",", metodo: (){print("coma");}),
                    BotonModel(titulo: "=", metodo: (){
                      print(resultado);
                      print("igual");}),
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
