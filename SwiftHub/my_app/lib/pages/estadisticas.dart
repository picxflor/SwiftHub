import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class EstadisPage extends StatelessWidget {
  const EstadisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 106, 190),
      appBar: AppBar(
        title: Text('Estadísticas'),
      ),
      body: ListView(
       children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Text('Recuento Mensual',style: TextStyle(
          color: Colors.white,
          fontSize: 30
        ),
        textAlign:(TextAlign.center) ,
        ),
        ),
        
        Container(
          margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
          child: CircularPercentIndicator(
            radius: 200,
            lineWidth: 20,
            percent: 0.8,
            progressColor: Colors.green,
            backgroundColor: Colors.white,
            circularStrokeCap: CircularStrokeCap.round,
            center: Text('80%',style: TextStyle(fontSize: 50,color: Colors.white),),
            ),
        ),
        Container(
           margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
           
          child: CircularPercentIndicator(
            radius: 200,
            lineWidth: 20,
            percent: 0.3,
            progressColor: Colors.red,
            backgroundColor: Colors.white,
            circularStrokeCap: CircularStrokeCap.round,
            center: Text('30%',style: TextStyle(fontSize: 50,color: Colors.white),),
            ),
        ),
         Container(
           margin: EdgeInsets.fromLTRB(0, 50, 0, 50),
           
          child: CircularPercentIndicator(
            radius: 200,
            lineWidth: 20,
            percent: 0.9,
            progressColor: Colors.yellow,
            backgroundColor: Colors.white,
            circularStrokeCap: CircularStrokeCap.round,
            center: Text('90%',style: TextStyle(fontSize: 50,color: Colors.white),),
            ),
        ),
       ]
      ),
    );
  }
}