
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class page_1 extends StatelessWidget {
  const page_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                  image: AssetImage('assets/images/house2.jpg'),
                  fit: BoxFit.cover)),
          height: 400,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 320),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(  
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [ 
                     Text('Find your dream house',style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(child: Text('A dream house is a place that a person dreams and each day wishes to be in that place.',style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700),)),
                ),
                    
              
              
              
              ],),
            ),
            decoration: BoxDecoration( border: Border(top: BorderSide( width: 15,   color: Colors.blue)),
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(80))),
            height: double.infinity,
            width: double.infinity,
          ),
        ),
      ],
    ));
  }
}
