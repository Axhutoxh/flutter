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
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async{
    if(_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }}

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
            child: Form(
              key: _formKey,
              child: Column(
                children: [  TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter username',
                      labelText: 'Username'
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Username Cannot Be Empty";
                    }
                    return null;
                  },
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

                    ),     validator: (value){
                    if(value!.isEmpty){
                      return "Password Cannot Be Empty";
                    }
                    else if(value.length<6){
                      return "Password length Should be at least 6";
                    }
                    return null;
                  },
                  ),
                  SizedBox(height: 40.0,),
                Material(
                  color: Colors.red,
                    borderRadius: BorderRadius.circular(changeButton?50.0:8.0),
                  child: InkWell(
                    onTap: () => moveToHome(context),
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

                    ),
                  ),
                )
                ],
              ),
            ),
          )
          ],
        ),
      )
    );
  }
}
