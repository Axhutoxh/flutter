import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Project X'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child:Text('Project X')
      ),
      drawer: Drawer(
      ),
    );
  }
}
