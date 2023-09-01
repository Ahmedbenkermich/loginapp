// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
    
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(child: Image.asset("assets/images/main_top.png",width: 111,color:Colors.purple[100],),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                      Text("Welcom" ,style: TextStyle(fontSize: 25,color: Colors.blue[800]),),
                      
                      SizedBox(height: 27,),
                      
                      SvgPicture.asset("assets/icons/chat.svg",height: 350,),

                      SizedBox(height: 27,),

                      ElevatedButton(onPressed: (){
                        Navigator.pushNamed(context, '/login');
                      }, 
                        child:Text("LOGIN",style: TextStyle(fontSize: 15),),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 85)
                          ),
                          backgroundColor: MaterialStateProperty.all(Colors.purple[600]),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                        ),
                        
                        ),

                      ElevatedButton(onPressed: (){
                        Navigator.pushNamed(context, '/signup');
                      }, 

                        child:Text("SIGNUP",style: TextStyle(fontSize: 15),),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 80)
                          ),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                          backgroundColor: MaterialStateProperty.all(Colors.purple[200])
                        ),
                        )
                ],
                         
                ),
              ),
              Positioned(
                child: Image.asset("assets/images/main_bottom.png",width: 80,color: Colors.purple[100],),
                bottom: 0,
                ),
            ]),
        ),
    
      ),
    );
  }
}