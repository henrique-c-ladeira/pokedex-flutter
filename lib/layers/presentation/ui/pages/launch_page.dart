import 'package:flutter/material.dart';

class LaunchPage extends StatefulWidget {
  const LaunchPage({Key? key}) : super(key: key);

  @override
  State<LaunchPage> createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    final radius = MediaQuery.of(context).size.width - 40;

    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: GestureDetector(
          onTapUp: (tapDetails) {
            print(tapDetails);
            setState(() {
              selected = !selected;
            });
          },
          onTapDown: (tapDetails) {
            print(tapDetails);
            setState(() {
              selected = !selected;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: radius,
            width: radius,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  colors: const [Colors.blue, Colors.red],
                  begin: selected ? Alignment.bottomRight : Alignment.topLeft),
            ),
            child: ClipOval(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                height: selected ? radius - 15 : radius - 2,
                width: selected ? radius - 15 : radius - 2,
                color: selected ? Colors.black87 : Colors.black54,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
