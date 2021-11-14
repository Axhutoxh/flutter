import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectx/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton=false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,

      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.0,),
            Image.asset('assets/images/login_thumb_red.png',fit: BoxFit.cover),

            Text('Welcome $name',
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
                onChanged: (value){
                  name=value;
                  setState(() {

                  });
                },
              ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Enter password',
                      labelText: 'Password'

                  ),
                ),
                SizedBox(height: 40.0,),
              InkWell(
                onTap: () async{
                  setState(() {
                    changeButton = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: 50.0,
                  width: changeButton ? 50.0:150.0,
                  alignment: Alignment.center,
                  child:changeButton?Icon(Icons.done,color: Colors.white,):Text("Login",
                    style: TextStyle(
                    color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                  ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(changeButton?50.0:8.0)
                  ),
                ),
              )
              // ElevatedButton(
              //   child: Text('Login'),
              //   style: TextButton.styleFrom(minimumSize: Size(150, 35)),
              //   onPressed: (){
              //     Navigator.pushNamed(context, MyRoutes.homeRoute);
              //   },
              // )
              ],

            ),
          )
          ],

        ),
      )
    );
  }
}
