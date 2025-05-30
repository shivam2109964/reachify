import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reachify/View/Auth/authScreen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7F1F7),
      body: Stack(
        children: [
          // Background decorative images
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset('assets/welcome/recThree.png', height: 80),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            right: 0,
            child: Image.asset('assets/welcome/recOne.png', height: 120),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.55,
            left: 0,
            child: Image.asset('assets/welcome/recTwo.png', height: 100),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.3, // Adjust as needed
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset('assets/welcome/growing.png', height: 300),
            ),
          ),

          // Main content
          Padding(
            padding: EdgeInsets.all(80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30), // Add some spacing from top
                Center(
                  child: Text(
                    "DevDevil",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 27,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Optimize. Connect. Grow",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.75, // Adjust as needed
            left: 0,
            right: 0,
            child: Center(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AuthScreen()),
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.55,
                  decoration: BoxDecoration(
                    color: Color(0xFF191D1E),
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                  ),
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: GoogleFonts.roboto(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
