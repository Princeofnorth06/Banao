import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Text3 extends StatelessWidget {
  const Text3(
      {super.key,
      required this.t,
      required this.t2,
      required this.t3,
      required this.i,
      required this.s});
  final String t;
  final String t2;
  final String t3;
  final String? i;
  final double s;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            t,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w700,
              fontSize: s,
              height: 16 / 12, // Line height calculation: 16px / 12px
              letterSpacing: -0.2, // -2% of the font size
              color: const Color(0xFF598BED), // Text color
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              t2,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                height: 24 / 16,
                letterSpacing: -0.16,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              children: [
                Text(
                  t3,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    height: 16 / 12, // Line height calculation: 16px / 12px
                    letterSpacing: -0.12, // -1% of the font size
                    color: const Color(0xFF6D747A), // Grey/Darker color
                  ),
                ),
                if (i != null)
                  const SizedBox(
                    width: 70,
                  ),
                if (i != null) // Check if image path is not null
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 65.0),
                      child: Image.asset(
                        i!,
                        height: 24,
                        width: 24,
                        // Adjust height as needed
                      ),
                    ),
                  ),
                const SizedBox(
                  width: 8,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
