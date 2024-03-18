import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:prince/text3.dart';

class Box3 extends StatefulWidget {
  final String t1;
  final String t2;
  final String t3;
  final String i;
  const Box3(
      {super.key,
      required this.t1,
      required this.t2,
      required this.t3,
      required this.i});

  @override
  State<Box3> createState() => _Box3State();
}

class _Box3State extends State<Box3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5),
      width: 107,
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
            width: 108,
            height: 140,
            color: const Color(0xFFDDE3C2),
            child: Image.asset(
              widget.i,
              fit: BoxFit.cover,
            ),
          ),
          Text3(t: widget.t1, t2: widget.t2, t3: widget.t3, i: null, s: 12),
        ],
      ),
    );
  }
}
