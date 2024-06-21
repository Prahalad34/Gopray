import 'package:flutter/material.dart';
import 'package:go_pray/Home.dart';
import 'package:go_pray/Home1.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Center(child: Image.asset('assets/go.png',height: 60,)),
              ),
              Text('Welcome to Go Pray!',style: TextStyle(color: Color(0xFF4190DB),fontSize: 20),),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text('Unlock the true',style: TextStyle(fontSize: 25,color: Colors.black),),
              ),
              Text('potential of Go-pray ',style: TextStyle(fontSize: 25,color: Colors.black),),
              Text('app',style: TextStyle(fontSize: 25,color: Colors.black),),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Image.asset('assets/line4.png'),
                    ),
                    Text('Login with Socials'),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Image.asset('assets/line4.png'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home1(),));
                  },
                  child: Container(
                    height: 44,
                    width: 328,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                          // decoration: BoxDecoration(color: Colors.blue),
                            Image.network(
                              'http://pngimg.com/uploads/google/google_PNG19635.png',
                              fit: BoxFit.fitWidth,
                            ),
                        Text('Sign in with Google',style: TextStyle(fontSize: 20),)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 44,
                  width: 328,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black)
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook,color: Colors.indigo,size: 35,),
                      Text('Sign in with Facebook',style: TextStyle(fontSize: 20),)
                    ],
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 44,
                  width: 328,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Icon(Icons.apple,size: 40,),
                     Text('Sign in with Apple',style: TextStyle(fontSize: 20),)

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Text('By Logging in, you agree to'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('User Agreement ',style: TextStyle(decoration: TextDecoration.underline),),
                  Text('and'),
                  Text(' Privacy policy',style: TextStyle(decoration: TextDecoration.underline),),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
