import 'dart:math';

import 'package:calculadora/models/boton.models.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import '../widgets/teclado.widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String resultado = "";
  String auxResultado = "";
  String operador = "";
  bool onResultado = false;
  List<String> historial = [".",".",".",".",".",".",".",".",".","."];
  List<String> auxHistorial = [".",".",".",".",".",".",".",".",".","."];
  //int contHistorial = 0;

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
              color: Color.fromRGBO(88, 88, 88, 1),
              child: Row(
                children: [
                  Column(
                    children: [
                    Text(auxHistorial[9], style: TextStyle(
                    color: Color.fromARGB(255, 237, 237, 242),
                    fontSize: 20),),
                    Text(auxHistorial[8], style: TextStyle(
                    color: Color.fromARGB(255, 237, 237, 242),
                    fontSize: 20),),
                    Text(auxHistorial[7], style: TextStyle(
                    color: Color.fromARGB(255, 237, 237, 242),
                    fontSize: 20),),
                    Text(auxHistorial[6], style: TextStyle(
                    color: Color.fromARGB(255, 237, 237, 242),
                    fontSize: 20),),
                    Text(auxHistorial[5], style: TextStyle(
                    color: Color.fromARGB(255, 237, 237, 242),
                    fontSize: 20),),
                    Text(auxHistorial[4], style: TextStyle(
                    color: Color.fromARGB(255, 237, 237, 242),
                    fontSize: 20),),
                    Text(auxHistorial[3], style: TextStyle(
                    color: Color.fromARGB(255, 237, 237, 242),
                    fontSize: 20),),
                    Text(auxHistorial[2], style: TextStyle(
                    color: Color.fromARGB(255, 237, 237, 242),
                    fontSize: 20),),
                    Text(auxHistorial[1], style: TextStyle(
                    color: Color.fromARGB(255, 237, 237, 242),
                    fontSize: 20),),
                    Text(auxHistorial[0], style: TextStyle(
                    color: Color.fromARGB(255, 237, 237, 242),
                    fontSize: 20),),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            color: Color.fromRGBO(75, 88, 75, 1),
            child: Row(
              children: [
                Text(resultado.replaceAll(auxResultado, "").replaceAll("=", "").replaceAll(" ", ""), style: TextStyle(color: Colors.white, fontSize: 50),),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: 100,
              color: Color.fromARGB(255, 80, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Teclado([
                    BotonModel(titulo: "(", metodo: (){
                      setState(() {
                        if(onResultado == true){
                          resultado = "";
                          onResultado = false;
                        }
                        resultado += "(";
                      });
                      print("open parenticis");}),
                    BotonModel(titulo: "%", metodo: (){   
                      setState(() {
                        resultado += "%";
                      });                   
                      print("porcentaje");}),
                    BotonModel(titulo: "CE", metodo: (){
                      setState(() {
                        resultado = "";
                        historial = [".",".",".",".",".",".",".",".",".","."];
                        auxHistorial = [".",".",".",".",".",".",".",".",".","."];
                        onResultado = false;
                        //contHistorial = 0;
                      });
                      print("limpiar todo");}),
                    BotonModel(titulo: "C", metodo: (){
                      setState(() {
                        resultado = "";
                        onResultado = false;
                      });
                      print("limpiar");}),
                    BotonModel(titulo: "<x", metodo: (){
                      setState(() {
                        resultado = resultado.substring(0, resultado.length - 1);
                      });                      
                      print("borrar");}),
                  ]),
                  Teclado([
                    BotonModel(titulo: ")", metodo: (){
                      setState(() {
                        if(onResultado == true){
                          resultado = "";
                          onResultado = false;
                        }
                        resultado += ")";
                      });
                      print("close parenticis");}),
                    BotonModel(titulo: "1/x", metodo: (){
                      setState(() {
                        resultado = "1/$resultado";
                      });
                      print("inversa");}),
                    BotonModel(titulo: "x²", metodo: (){
                      setState(() {
                        resultado += "^2";
                      });
                      print("elevado");}),
                    BotonModel(titulo: "√", metodo: (){
                      setState(() {
                        onResultado = true;
                        auxResultado = resultado;
                        print("Resultado de raiz: "+resultado);
                        resultado = sqrt(num.parse(resultado)).toString();
                        historial.add("√($auxResultado) = $resultado");
                        auxHistorial = historial.reversed.toList();
                      });
                      print("raiz");}),
                    BotonModel(titulo: "/", metodo: (){
                      setState(() {
                        onResultado = false;
                        resultado += "/";
                      });
                      print("divicion");}),
                  ]),
                  Teclado([
                    BotonModel(titulo: "7", metodo: (){
                      setState(() {
                        if(onResultado == true){
                          resultado = "";
                          onResultado = false;
                        }
                        resultado += "7";
                      });
                      print("siete");}),
                    BotonModel(titulo: "8", metodo: (){
                      setState(() {
                        if(onResultado == true){
                          resultado = "";
                          onResultado = false;
                        }
                        resultado += "8";
                      });
                      print("ocho");}),
                    BotonModel(titulo: "9", metodo: (){
                      setState(() {
                        if(onResultado == true){
                          resultado = "";
                          onResultado = false;
                        }
                        resultado += "9";
                      });
                      print("nueve");}),
                    BotonModel(titulo: "X", metodo: (){
                      setState(() {
                        onResultado = false;
                        resultado += "*";
                      });
                      print("por");}),
                  ]),
                  Teclado([
                    BotonModel(titulo: "4", metodo: (){
                      setState(() {
                        if(onResultado == true){
                          resultado = "";
                          onResultado = false;
                        }
                        resultado += "4";
                      });
                      print("cuatro");}),
                    BotonModel(titulo: "5", metodo: (){
                      setState(() {
                        if(onResultado == true){
                          resultado = "";
                          onResultado = false;
                        }
                        resultado += "5";
                      });
                      print("cinco");}),
                    BotonModel(titulo: "6", metodo: (){
                      setState(() {
                        if(onResultado == true){
                          resultado = "";
                          onResultado = false;
                        }
                        resultado += "6";
                      });
                      print("seix");}),
                    BotonModel(titulo: "-", metodo: (){
                      setState(() {
                        onResultado = false;
                        resultado += "-";
                      });
                      print("menos");}),
                  ]),
                  Teclado([
                    BotonModel(titulo: "1", metodo: (){
                      setState(() {
                        if(onResultado == true){
                          resultado = "";
                          onResultado = false;
                        }
                        resultado += "1";
                      });
                      print("uno");}),
                    BotonModel(titulo: "2", metodo: (){
                      setState(() {
                        if(onResultado == true){
                          resultado = "";
                          onResultado = false;
                        }
                        resultado += "2";
                      });
                      print("dos");}),
                    BotonModel(titulo: "3", metodo: (){
                      setState(() {
                        if(onResultado == true){
                          resultado = "";
                          onResultado = false;
                        }
                        resultado += "3";
                      });
                      print("tre");}),
                    BotonModel(titulo: "+", metodo: (){
                      setState(() {
                        onResultado = false;
                        resultado += "+";
                      });
                      print("mas");}),
                  ]),
                  Teclado([
                    BotonModel(titulo: "+/-", metodo: (){
                      setState(() {
                        resultado = (num.parse(resultado)*-1).toString();
                      });
                      print("mas o menos");}),
                    BotonModel(titulo: "0", metodo: (){
                      setState(() {
                        if(onResultado == true){
                          resultado = "";
                          onResultado = false;
                        }
                        resultado += "0";
                      });
                      print("cero");}),
                    BotonModel(titulo: ",", metodo: (){
                      setState(() {
                        onResultado = false;
                        resultado += ".";
                      });
                      print("coma");}),
                    BotonModel(titulo: "=", metodo: (){
                      setState(() {
                        print(resultado);
                        auxResultado = resultado;
                        print("igual");
                        //-------------------------------
                        try{
                          Parser p = new Parser();
                          ContextModel cm = new ContextModel();
                          Expression exp = p.parse(resultado.replaceAll("%", "/100"));
                          setState(() {
                            resultado = exp.evaluate(EvaluationType.REAL, cm).toString();
                            auxResultado = auxResultado+" = "+exp.evaluate(EvaluationType.REAL, cm).toString();
                          });
                          historial.add(auxResultado);
                          print("Resultado: $resultado");
                        }catch (error){
                          resultado = "ERROR";
                        }
                        //-------------------------------
                        /*
                        contHistorial += 1;
                        if (contHistorial == 9){
                          historial[contHistorial]=historial[0];
                          contHistorial = 0;
                        }
                        */
                        auxHistorial = historial.reversed.toList();
                      }                   
                      );
                      onResultado = true;
                        //historial[contHistorial]=historial[0];
                      }),
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
