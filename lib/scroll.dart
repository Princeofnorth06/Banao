import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prince/box.dart';
import 'package:prince/card.dart';
import 'package:prince/card2.dart';

class Scroll extends StatefulWidget {
  final String i;
  final String i2;
  final String? i3;
  final String t1;
  final String t2;
  final String t3;
  final String t4;
  final String t5;
  final String t6;
  final String t7;
  const Scroll({
    super.key,
    required this.i,
    required this.i2,
    required this.i3,
    required this.t1,
    required this.t2,
    required this.t3,
    required this.t4,
    required this.t5,
    required this.t6,
    required this.t7,
  });

  @override
  State<Scroll> createState() => _ScrollState();
}

class _ScrollState extends State<Scroll> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      width: 380,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          bottomLeft: Radius.circular(8),
        ),
        border: Border.all(
          color: Colors.grey[700]!, // Darker grey color
          width: 1,
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.grey[300]!, // Lighter grey color
            Color(0xFFEBEDF0), // #EBEDF0 color
          ],
          stops: [0.0, 1.0],
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.t4,
                style: GoogleFonts.lora(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  height: 26 / 18, // Line height calculation: 26px / 18px
                  letterSpacing: -0.18, // -1% of the font size
                  color: Colors.black, // Text color
                ),
              ),
              Row(
                children: [
                  Text(
                    'View all',
                    textAlign: TextAlign.right,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      height: 18 / 12, // Line height calculation: 18px / 12px
                      letterSpacing: -0.12, // -1% of the font size
                      color: const Color(0xFF6D747A), // Grey/Darker color
                    ),
                  ),
                  Image.asset('images/Arrow right.png'),
                  const SizedBox(
                    width: 10,
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Box2(
                t1: widget.t1,
                t2: widget.t2,
                t3: widget.t3,
                i: widget.i,
                i2: widget.i3,
              ),
              const SizedBox(
                width: 10,
              ),
              Box3(t1: widget.t7, t2: widget.t6, t3: widget.t5, i: widget.i2)
            ],
          )
        ],
      ),
    );
  }
}
