import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenC'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
                color: Colors.red,
                child: Text('Go to ScreenA'),
                onPressed: (){
                  Navigator.pushNamed(context, '/');
                }),
          ],
        ),
      ),
    );
  }
}
