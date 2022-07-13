import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  // 생성자 함수
  MyButton({
    required this.image,
    required this.text,
    required this.color,
    required this.radius,
    required this.onPressed
})

  // 생성자 함수를 통해서 각 버튼의 고유값을 받아서 동일한 디자인의 버튼을 각각 생성함.
  // 입력받은 고유의 값을 저장하기 위해 final 키워드를 사용함.
  final Widget image;
  final Widget text;
  final Color color;
  final double radius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 50.0,
      child: RaisedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //Image.asset('images/glogo.png'),
            image,
            // Text(
            //   'Login with Google',
            //   style: TextStyle(color: Colors.black87, fontSize: 15.0),
            // ),
            text,
            Opacity(
              opacity: 0.0,
              //child: Image.asset('images/glogo.png'),
              child: image,
            ),
          ],
        ),
        //color: Colors.white,
        color: color,
        //onPressed: () {},
        onPressed: onPressed,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          //Radius.circular(4.0),
          Radius.circular(radius),
        ),
      ),
    );
  }
}
