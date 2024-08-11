import 'package:flutter/material.dart';
import 'package:event_planning_app/components/button.dart';
import 'package:event_planning_app/components/square_tile.dart';
import 'package:event_planning_app/components/text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:event_planning_app/components/register_now.dart';



class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  // text editing controller
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //SizedBox(height: 20,),

              // logo
              Image.asset(
                'lib/images/logo-removebg.png',
                height: 180,
              ),

              //SizedBox(height: 20,),

              // email
              MyTextField(
                controller: emailController,
                hintText: "Enter your Email",
                obscureText: false,
              ),

              SizedBox(height: 10,),

              // full name
              MyTextField(
                controller: usernameController,
                hintText: "Enter your full name",
                obscureText: false,
              ),

              SizedBox(height: 10,),

              // password
              MyTextField(
                controller: passwordController,
                hintText: "Enter password",
                obscureText: true,
              ),

              SizedBox(height: 10,),

              // password
              MyTextField(
                controller: passwordController,
                hintText: "Confirm password",
                obscureText: true,
              ),

              SizedBox(height: 20,),

              // login
              MyButton(
                text: "Sign Up",
                onTap: (){
                  Navigator.pushNamed(context, '/home');
                },
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

              // already a member? register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already a member?"),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
