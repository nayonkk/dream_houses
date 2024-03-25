


import 'package:dream_houses/final_page.dart';
import 'package:dream_houses/page_1.dart';
import 'package:dream_houses/page_2.dart';
import 'package:dream_houses/page_3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:ui_ux_design101/Page_1.dart';
// import 'package:ui_ux_design101/Page_3.dart';
// import 'package:ui_ux_design101/final_page.dart';
// import 'package:ui_ux_design101/page_2.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  bool onLastPage = false;
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack( 
      children: [
        PageView(
          controller: _controller,

          // onPageChanged: (index) {
          //   onLastPage==index;

          // },

          children: [
            page_1(),
            page_2(),
            page_3(),
          ],
        ),
        Container( 
            alignment: Alignment(0.0, 0.8),
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(   
                   onTap: () {
                    //  _controller.previousPage(duration: Duration(seconds: 2), curve: Curves.bounceIn);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>finalpage()));
                   },
                  
                  child: Text('Skip',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),
                SmoothPageIndicator(
                    effect: WormEffect(
                        dotColor: Colors.black,
                        dotWidth: 30,
                        paintStyle: PaintingStyle.fill),
                    controller: _controller,
                    count: 3),
                     GestureDetector( onTap: () {
                        _controller.nextPage(duration: Duration(seconds: 1), curve: Curves.bounceInOut);


                     }, child: Text('Next',style: TextStyle(color: Colors.black,fontSize:18,fontWeight: FontWeight.bold),)),
              ],
            )),
      ],
    ));
  }
}

