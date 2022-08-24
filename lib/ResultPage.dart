import 'package:bmi_calculator/WidgetsCreater.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/InputPage.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI CALCULATOR"),centerTitle: true ,backgroundColor: Color(0xFF0A0E21),),

      body: Column(
        children: [
          
          Text("Your Result",style: TextStyle(fontSize: 60,color: Colors.white),),
          
          CardCreater(colour: Color(0xFF1D1E33), card: 
          Column(
            children: [
              SizedBox(height: 60,),
              bmilevel(),
              SizedBox(height: 90,),
              Text(calculate().round().toString(),style: TextStyle(fontSize: 150,color: Colors.white),),
            ],
          )
          ),


          SizedBox(height: 20,),
          Container(
            width: double.infinity ,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.redAccent,
            ),
            child: GestureDetector(
              child: Center(child: Text("Re-Calculate" , style: TextStyle(fontSize: 30 , color: Colors.white))),
              onTap: (){Navigator.pushNamed(context, '/');},

            ),
          )

        ],
      ),

    );
  }
}

double calculate(){
  return (weight/((height/100)*(height/100)));
}

Text bmilevel(){
  if(calculate() >= 35){
    return Text("EXTREMELY OBESE", style: TextStyle(color: Colors.red,fontSize: 40),);
  }
  else if(calculate() >= 30){
    return Text("OBESE", style: TextStyle(color: Colors.orange,fontSize: 40),);
  }
  else if(calculate() >= 25){
    return Text("OVERWEIGHT", style: TextStyle(color: Colors.yellowAccent,fontSize: 40),);
  }
  else if(calculate() >= 18){
    return Text("NORMAL", style: TextStyle(color: Colors.green,fontSize: 40),);
  }
  else{
    return Text("UNDERWEIGHT", style: TextStyle(color: Colors.blueAccent,fontSize: 40),);
  }
}