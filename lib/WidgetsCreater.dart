import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'consts.dart';


// main cards creater
class CardCreater extends StatelessWidget {
  CardCreater({required this.colour , required this.card});

  final Color colour;
  final  Widget card;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(


      child: card,

      height: double.infinity,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),


    ));
  }
}



// icon column creater
class IconCreater extends StatelessWidget {
   IconCreater({required this.icon,required this.label,required this.method ,required this.gendercolor});

  final IconData icon ;
  final String label  ;
  final VoidCallback method;
  final Color gendercolor;
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [


          SizedBox(
            height: 30,
          ),

          Icon(
            icon,
            size: 80,
            color: gendercolor,
          ),

          SizedBox(
            height: 15,
          ),

          Text(
            label,
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF8D8E98)
            ),
          ),
        ],
      ),
      onTap: method,
    );
  }
}



