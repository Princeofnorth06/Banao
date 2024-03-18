import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:prince/text3.dart';

class Box2 extends StatefulWidget {
  final String t1;
  final String t2;
  final String t3;
  final String i;
  final String? i2;
  const Box2({
    super.key,
    required this.t1,
    required this.t2,
    required this.t3,
    required this.i,
    required this.i2,
  });

  @override
  State<Box2> createState() => _Box2State();
}

class _Box2State extends State<Box2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 220,
        height: 292,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.white,
            width: 1,
          ),
          color: const Color(0xFFEBEDF0), // Grey/Lighter color
        ),
        child: Column(
          children: [
            Container(
              width: 242,
              height: 140,
              color: Color(0xFFDDE3C2),
              child: Image.asset(
                widget.i,
                fit: BoxFit.fitHeight,
              ),
            ),
            Text3(
                t: widget.t1,
                t2: widget.t2,
                t3: widget.t3,
                i: widget.i2,
                s: 12),
          ],
        ),
      ),
    );
  }
}
