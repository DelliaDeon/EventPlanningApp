import 'package:event_planning_app/components/button.dart';
import 'package:event_planning_app/components/register_now.dart';
import 'package:event_planning_app/components/square_tile.dart';
import 'package:event_planning_app/components/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //final TextEditingController _emailController = TextEditingController();

  // text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn(){
    Navigator.pushNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20,),

              // logo
              Icon(Icons.lock, size: 80, color: Colors.blueAccent,),

              SizedBox(height: 15,),

              // welcome back transition
              Text(
                "Welcome Back.",
                style: TextStyle(
                  fontSize: 16,
                ),),

              SizedBox(height: 20,),

              // username
              MyTextField(
                  controller: usernameController,
                  hintText: "Enter your Email",
                  obscureText: false),

              SizedBox(height: 10,),

              // password
              MyTextField(
                controller: passwordController,
                hintText: "Enter your password",
                obscureText: true,
              ),


              //forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),

              // login
              MyButton(
                text: "Sign In",
                onTap: signUserIn,
              ),

              SizedBox(height: 20,),

              // sign in with apple / google
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1.5,
                          color: Colors.blue,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          " Or continue with ",
                        ),
                      ),

                      Expanded(
                        child: Divider(
                          thickness: 1.5,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  )
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: 'lib/images/googl-removebg.png'),

                  SizedBox(width: 20,),

                  SquareTile(imagePath: 'lib/images/apple-removebg.png'),
                ],
              ),

              SizedBox(height: 30,),

              // not a member? register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?"),
                  SizedBox(width: 10,),
                  RegisterNow(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
