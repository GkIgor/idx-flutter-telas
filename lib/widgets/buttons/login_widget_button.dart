import 'package:flutter/material.dart';

class LoginWidgetButton extends StatelessWidget {
  final Function onPressed;
  const LoginWidgetButton({super.key, required this.onPressed});

  static const List<Color> colors = [
    Color.fromRGBO(255, 72, 109, 1),
    Color.fromRGBO(255, 72, 109, 1),
    Color.fromRGBO(255, 94, 96, 1),
    Color.fromRGBO(255, 94, 96, 1),
    Color.fromRGBO(253, 51, 118, 1),
    Color.fromRGBO(253, 51, 118, 1),
    Color.fromRGBO(255, 94, 96, 1),
    Color.fromRGBO(255, 94, 96, 1)
  ];

  static const List<double> stops = [
    0.0,
    0.1,
    0.2,
    0.3,
    0.4,
    0.5,
    0.8,
    0.7,
  ];

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: colors,
          stops: stops,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: Colors.transparent,
          disabledForegroundColor: Colors.transparent,
          elevation: 0,
        ),
        onPressed: onPressed(),
        child: Text(
          'Login with Facebook',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            background: Paint()..color = Colors.transparent,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
