import 'package:flutter/material.dart';

class GradientWidget extends StatelessWidget {
  const GradientWidget(this.color1, this.color2, this.text, {super.key});
  const GradientWidget.red({super.key})
      : color1 = Colors.red,
        color2 = Colors.orange,
        text= 'Red Gradient';
  final Color color1;
  final Color color2;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [color1, color2],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(15))),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(fontSize: 28, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
