import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class fertilizer extends StatefulWidget {
  const fertilizer({Key? key}) : super(key: key);

  @override
  _fertilizerState createState() => _fertilizerState();
}

class _fertilizerState extends State<fertilizer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 30,
        backgroundColor: Colors.grey.shade400,
        title: Text(
          '      FERTILIZERS',
          style: GoogleFonts.ebGaramond(
            textStyle: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/firs');
          },
        ),
      ),
      body: Center(
        child: Text(
          'Still No Records Found',
          style: GoogleFonts.ebGaramond(
            textStyle: TextStyle(
                color: Colors.black38,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
