import 'package:bmi_calculator/WidgetsCreater.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/ResultPage.dart';

String gender = "";
int height = 150;
int weight = 69;
int age = 13;


Color clrprsd = Color(0xFF1D1E33);


class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);
  @override
  State<InputPage> createState() => _InputPageState();
}



class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI CALCULATOR"),centerTitle: true ,backgroundColor: Color(0xFF0A0E21),),
      body: Column(
        children: [



          // The genders card on top
          Expanded(child: Row(
            children: [
              CardCreater(colour: Color(0xFF1D1E33), card: IconCreater(icon: FontAwesomeIcons.mars ,gendercolor: MyGender1(gender), label: "MALE",
                method: (){
                setState(()  {
                  gender = "MALE";


                });
                }
                ,)),
              CardCreater(colour: Color(0xFF1D1E33), card: IconCreater(icon: FontAwesomeIcons.venus ,gendercolor: MyGender2(gender), label: "FEMALE",
                method: (){
                  setState(()  {
                    gender = "FEMALE";


                  });
                }
                ,)),
          ],),),




          // The slider in the middle
          CardCreater(colour: Color(0xFF1D1E33), card:
          Column(
            children: [
              SizedBox(height: 20,),
              Text("HEIGHT" , style: TextStyle(fontSize: 18 , color: Color(0xFF8D8E98))),
              SizedBox(height: 5,),
              Text(height.toString() , style: TextStyle(fontSize: 50 , color: Colors.white , ),),
              Slider(

                value: height.toDouble(),
                onChanged: (newheight){
                  setState((){
                    height = newheight.round(); print(height);
                  });
                } ,

                min: 100,
                max: 200,
                inactiveColor: Colors.white,
                activeColor: Colors.redAccent,
              ),
            ],
          )
          ),





          // weghit and age cards
          Expanded(child: Row(children: [
            CardCreater(colour: Color(0xFF1D1E33), card:
                Column(
                  children: [
                    SizedBox(height: 20,),
                    Text("WEGHIT" , style: TextStyle(fontSize: 18 , color: Color(0xFF8D8E98))),
                    SizedBox(height: 5,),
                    Text(weight.toString() , style: TextStyle(fontSize: 60 , color: Colors.white)),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(child: GestureDetector(child: Icon(FontAwesomeIcons.circleMinus , size: 50,color: Color(0xFF8D8E98)), onTap: (){setState(() => weight--);})),
                          Expanded(child: GestureDetector(child: Icon(FontAwesomeIcons.circlePlus , size: 50,color: Color(0xFF8D8E98)), onTap: (){setState(() => weight++);})),
                        ],
                      ),
                    )
                  ],
                )
            ),

            CardCreater(colour: Color(0xFF1D1E33), card:
            Column(
              children: [
                SizedBox(height: 20,),
                Text("AGE" , style: TextStyle(fontSize: 18 , color: Color(0xFF8D8E98))),
                SizedBox(height: 5,),
                Text(age.toString() , style: TextStyle(fontSize: 60 , color: Colors.white)),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: GestureDetector(child: Icon(FontAwesomeIcons.circleMinus , size: 50,color: Color(0xFF8D8E98)), onTap: (){setState(() => age--);})),
                      Expanded(child: GestureDetector(child: Icon(FontAwesomeIcons.circlePlus , size: 50,color: Color(0xFF8D8E98)), onTap: (){setState(() => age++);})),
                    ],
                  ),
                )
              ],
            )
            ),
          ],),),


          // calculate + next page
          SizedBox(height: 20,),
          Container(
            width: double.infinity ,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.redAccent,
            ),
            child: GestureDetector(
              child: Center(child: Text("Calculate" , style: TextStyle(fontSize: 30 , color: Colors.white))),
              onTap: (){Navigator.pushNamed(context, '/result');},

            ),
          )



        ],
      ),

    );
  }
}








//genders icon color changer
Color MyGender1(String){
  if(String == "MALE"){
    return Colors.redAccent;
  }
  else{
    return Colors.white;
  }

}
Color MyGender2(String){
  if(String == "FEMALE"){
    return Colors.redAccent;
  }
  else{
    return Colors.white;
  }

}