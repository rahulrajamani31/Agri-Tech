// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

import 'package:google_fonts/google_fonts.dart';

class motor extends StatefulWidget {
  const motor({Key? key}) : super(key: key);

  @override
  _motorState createState() => _motorState();
}

class _motorState extends State<motor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
            elevation: 30,
            backgroundColor: Colors.grey.shade400,
            title: Text(
              '      MOTOR',
              style: GoogleFonts.ebGaramond(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/firs');
              },
            )),
        body: null
        // Container(
        //   height: MediaQuery.of(context).size.height,
        //   width: MediaQuery.of(context).size.width,
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     children: [
        //       Text(
        //         'Turn your Motor ON/OFF   \n           from anywhere    ',
        //         style: GoogleFonts.ebGaramond(
        //           textStyle: TextStyle(
        //               color: Colors.black,
        //               fontSize: 25,
        //               fontWeight: FontWeight.bold),
        //         ),
        //       ),
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           BouncingWidget(
        //             duration: Duration(milliseconds: 100),
        //             scaleFactor: 1.5,
        //             onPressed: () {},
        //             child: Container(
        //               height: 250,
        //               width: 250,
        //               decoration: BoxDecoration(
        //                   image: DecorationImage(
        //                       image: AssetImage('assets/poster3.png'),
        //                       fit: BoxFit.fill)),
        //             ),
        //           )
        //         ],
        //       ),
        //       LiteRollingSwitch(
        //         //initial value

        //         textOn: 'Motor ON',
        //         textOff: 'Motor OFF',
        //         colorOn: Colors.greenAccent[700],
        //         colorOff: Colors.redAccent[700],
        //         iconOn: Icons.done,
        //         iconOff: Icons.remove_circle_outline,
        //         textSize: 16.0,
        //       ),
        //       BouncingWidget(
        //         duration: Duration(milliseconds: 100),
        //         scaleFactor: 1.5,
        //         onPressed: () {},
        //         child: Card(
        //           elevation: 40,
        //           color: Colors.greenAccent,
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(20),
        //           ),
        //           child: SizedBox(
        //             width: 200,
        //             height: 50,
        //             child: Center(
        //               child: Text(
        //                 'Get Motor Info',
        //                 style: TextStyle(
        //                     color: Colors.black,
        //                     fontSize: 25,
        //                     fontWeight: FontWeight.bold),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        );
  }
}
