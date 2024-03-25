
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class page_3 extends StatelessWidget {
  const page_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                  image: AssetImage('assets/images/house22.jpg'),
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
                     Text('“It is charming”',style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(child: Text('“Well, let’s look at the rest of it,” Gary sounded emotional, but not surprised. He knew the strong spiritual connection Allan and I always had, even now.',style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700),)),
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
