import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectx/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,

      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.0,),
            Image.asset('assets/images/login_thumb_red.png',fit: BoxFit.cover),

            Text('Welcome',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0

              ),
            ),
            SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 30.0),
            child: Column(
              children: [  TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter username',
                    labelText: 'Username'

                ),
              ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Enter password',
                      labelText: 'Password'

                  ),
                ),
                SizedBox(height: 40.0,),
              ElevatedButton(
                child: Text('Login'),
                style: TextButton.styleFrom(minimumSize: Size(150, 35)),
                onPressed: (){
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
              )],

            ),
          )
          ],

        ),
      )
    );
  }
}
