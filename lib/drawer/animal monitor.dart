import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class animal extends StatefulWidget {
  const animal({Key? key}) : super(key: key);

  @override
  _animalState createState() => _animalState();
}

class _animalState extends State<animal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 30,
        backgroundColor: Colors.grey.shade400,
        title: Text(
          '      ANIMAL MONITOR',
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
