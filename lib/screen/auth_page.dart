import 'package:flutter/material.dart';
import 'package:mental_health_app/components/my_textfield.dart';
import 'package:mental_health_app/components/sign_inbutton.dart';

class AuthPage extends StatelessWidget {
   AuthPage({super.key,});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  //sign in user method
  void signuserin(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.grey[70],
    appBar: AppBar(
      title: const Text('FelED - Student Mental Health',style: TextStyle(color: Colors.blueGrey,fontSize: 20, fontWeight: FontWeight.bold, )),
    ),
    body: SafeArea(
      child: Center(
      child: Column(
        children: [
          Icon(Icons.lock,
          size:50,
          ),
          const SizedBox(height:50),


          Text('Welcome back you\'ve been missed',
          style: TextStyle(color: Colors.blueGrey[200],fontSize:16),
          ),
          const SizedBox(height:25),


          MyTextfield(
            controller: emailController,
            obscureText: false,
            hintText: 'Email',
          ),
          const SizedBox(height:20),
          MyTextfield(
            controller: passwordController,
            obscureText: true,
            hintText: 'Password'
          ),
          const SizedBox(height:20),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text( 'Forgot Password?',
                style: TextStyle(color: Colors.blueGrey[200]),),
              ],
            ),
          ),
          const SizedBox(height:20),
          mybutton(
            onTap: signuserin,
          ),
          const SizedBox(height:25),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.blueGrey[200],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Or continue with',
                    style: TextStyle(color: Colors.blueGrey[200]),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.blueGrey[200],
                  ),
                ),
              ],
            ),
          )
          ,Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: (){},
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    side: BorderSide(color: Colors.blueGrey.shade200),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Image.asset(
                    'lib/images/google.png',
                    height: 20,
                  ),
                ),
              ),
            ],

          )
        ],
      ),
    ))
  );
}}