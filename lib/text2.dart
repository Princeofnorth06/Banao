import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Text2 extends StatefulWidget {
  final String t;
  final double s;
  const Text2({super.key,required this.t,required this.s});


  @override
  State<Text2> createState() => _Text2State();
}

class _Text2State extends State<Text2> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.t,
      style: GoogleFonts.inter(
        fontWeight: FontWeight.w500,
        fontSize: widget.s,
        height: 16 / widget.s, // Line height calculation: 26px / 20px
        letterSpacing: -0.2, // -1% of the font size
        color: Colors.black, // Adjust color as needed
      ),
    );

  }
}
