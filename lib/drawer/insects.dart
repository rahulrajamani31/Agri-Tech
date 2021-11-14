import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class insects extends StatefulWidget {
  const insects({Key? key}) : super(key: key);

  @override
  _insectsState createState() => _insectsState();
}

class _insectsState extends State<insects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 30,
        backgroundColor: Colors.grey.shade400,
        title: Text(
          '     INSECTS & DISEASE',
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
