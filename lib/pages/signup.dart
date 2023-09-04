// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, sort_child_properties_last, deprecated_member_use, avoid_unnecessary_containers, unused_field

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

 

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

   var _hidden=true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            height: double.infinity,
            child: Stack(children: [
              
              SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "SIGNUP",
                        style: TextStyle(fontSize: 25, color: Colors.blue[800]),
                      ),
                      
                      SizedBox(height: 10,),
                      
                      SvgPicture.asset("assets/icons/signup.svg", height: 230),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.purple[100],
                            borderRadius: BorderRadius.circular(66)),
                        width: 270,
                        child: TextField(
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                      ),
                      
                      SizedBox(
                        height: 20,
                      ),
                      
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.purple[100],
                            borderRadius: BorderRadius.circular(66)),
                        width: 270,
                        child: TextField(
                          obscureText:_hidden,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon:IconButton(
                              icon:_hidden ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                              onPressed: (){
                              setState(() {
                                _hidden=!_hidden;
                                
                              });
                            },
                             
                             iconSize: 22,
                             padding: EdgeInsets.only(right: 10),
                             ),
                            ),
                          ),
                        ),
                    
                      
                      SizedBox(
                        height: 20,
                      ),
                      
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "SIGNUP",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple[600]),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(horizontal: 99, vertical: 8)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                        ),
                      ),
                      
                      SizedBox(height: 10,),
                      
                      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        Text(
                          "Already have an Account ? ",
                          style: TextStyle(fontSize: 14),
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "/login");
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                      ]),
                      
                      SizedBox(height: 10,),
                          
                      Container(
                        width: 280,
                        child: Row(
                          children: [
                            Expanded(
                                child: Divider(
                              thickness: 1,
                              color: Colors.purple[100],
                            )),
                            Text(
                              "   OR   ",
                              style: TextStyle(fontSize: 15),
                            ),
                            Expanded(
                                child: Divider(
                              thickness: 1,
                              color: Colors.purple[100],
                            )),
                          ],
                        ),
                      ),
                      
                      SizedBox(height: 10,),
                          
                      Container(    
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.purple, width: 2)),
                              child: SvgPicture.asset(
                                "assets/icons/facebook.svg",
                                color: Colors.purple[700],
                                height: 25,
                              ),
                            ),
                            
                            SizedBox(width: 22),
                            
                            Container(
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.purple, width: 2)),
                              child: SvgPicture.asset(
                                "assets/icons/twitter.svg",
                                color: Colors.purple[700],
                                height: 25,
                              ),
                            ),
                            
                            SizedBox(width: 22),
                            
                            Container(
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.purple, width: 2)),
                              child: SvgPicture.asset(
                                "assets/icons/google-plus.svg",
                                color: Colors.purple[700],
                                height: 25,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                 
                 
                 
                  ),
                ),
              ),
              Positioned(
                child: Image.asset(
                  "assets/images/signup_top.png",
                  width: 127,
                  color: Colors.purple[100],
                ),
              ),
              Positioned(
                child: Image.asset(
                  "assets/images/main_bottom.png",
                  width: 66,
                  color: Colors.purple[100],
                ),
                bottom: 0,
                left: 0,
              )
            ]),
          ),
        ),
      ),
    );
  }
}