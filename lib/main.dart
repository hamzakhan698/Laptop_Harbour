import 'package:e_project/catogories.dart';
import 'package:e_project/create_account.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Product_List(),
    );
  }
}

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [

             const SizedBox(
               height: 60,
             ),

             const Center(
               child: SizedBox(
                 width: 160,
                 child: Image(
                   alignment: Alignment.topCenter,
                   image: AssetImage('images/laptops.png'),
                 ),
                 ),),
             const SizedBox(
               height: 20,
             ),
             Container(
                 margin: const EdgeInsets.only(left: 20,top: 20),
                 child: const Text('Login to your Account',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),

             SizedBox(
               height: 20,
             ),

             Container(
               margin: EdgeInsets.symmetric(horizontal: 18),
               child: TextFormField(
                 decoration: InputDecoration(
                   hintText: 'Email',
                   border:OutlineInputBorder(
                       borderSide:BorderSide(color: Colors.black26),
                       borderRadius: BorderRadius.circular(12)
                   ),
                 ),
               ),
             ),

             SizedBox(
               height: 20,
             ),

             Container(
               margin: EdgeInsets.symmetric(horizontal: 18),
               child: TextFormField(
                 decoration: InputDecoration(
                   hintText: 'Password',
                   border:OutlineInputBorder(
                       borderSide:BorderSide(color: Colors.black26),
                       borderRadius: BorderRadius.circular(12)
                   ),
                 ),
               ),
             ),

             SizedBox(height: 10),
             Center(
               child: Container(
                 width: 400,
                 height: 50,
                 margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                 child: ElevatedButton(onPressed: (){
                 }, child: Text("Sign in", style: TextStyle(
                     color: Colors.white
                 ),),
                     style: TextButton.styleFrom(
                       backgroundColor: Color(0xFF010c80),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(8),
                       ),
                     )),
               ),
             ),

             SizedBox(height: 20),
             Center(
               child: Text('.Or sign in with.'),
             ),

             SizedBox(height: 20),
             
             Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Container(
                   width: 110,
                   height: 60,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child: Center(
                     child: CircleAvatar(
                       backgroundColor: Colors.white,
                     backgroundImage: AssetImage('images/Google Logo.png'),
                     ),
                   ),
              ),

                 Container(
                   width: 110,
                   height: 60,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child: Center(
                     child: CircleAvatar(
                       backgroundColor: Colors.white,
                       backgroundImage: AssetImage('images/Facebook.png'),
                     ),
                   ),
                 ),


                 Container(
                   width: 110,
                   height: 60,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child: Center(
                     child: CircleAvatar(
                       backgroundColor: Colors.white,
                       backgroundImage: AssetImage('images/Twitter.png'),
                     ),
                   ),
                 ),

            ],
          ),

             SizedBox(height: 40),
             Center(
               child: Text("Don't have an account? Sign up")
             ),
           ],



         ),
    );
  }
}

