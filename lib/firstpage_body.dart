import 'dart:math';
import 'package:flutter/material.dart';
import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:google_fonts/google_fonts.dart';

class first_body extends StatefulWidget {
  const first_body({Key? key}) : super(key: key);

  @override
  _first_bodyState createState() => _first_bodyState();
}

class _first_bodyState extends State<first_body> {
  DateTime? selectedDate;
  Random random = new Random();

  void initState() {
    setState(() {
      selectedDate = DateTime.now();
    });

    super.initState();
  }

  final color1 = [Colors.green, Colors.red];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        child: ListView(children: [
          CalendarAppBar(
            accent: Colors.grey.shade300,
            backButton: false,
            white: Colors.black,
            black: Colors.greenAccent,
            locale: 'en',
            onDateChanged: (value) => setState(() => selectedDate = value),
            firstDate: DateTime.now().subtract(Duration(days: 140)),
            lastDate: DateTime.now(),
            events: List.generate(
                100,
                (index) => DateTime.now()
                    .subtract(Duration(days: index * random.nextInt(5)))),
          ),
          SizedBox(
            height: 30,
          ),
          Card(
            elevation: 20,
            color: Colors.greenAccent.shade400,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            child: SizedBox(
              width: 280,
              height: 110,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/Motor.png'),
                              fit: BoxFit.fill)),
                    ),
                    Text(
                      'MOTOR',
                      style: GoogleFonts.ebGaramond(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/motor');
                      },
                      icon: Icon(Icons.arrow_forward_ios_sharp),
                      iconSize: 30,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            elevation: 20,
            color: Colors.greenAccent.shade400,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            child: SizedBox(
              width: 320,
              height: 110,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 90,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/Irrigation.png'),
                              fit: BoxFit.fill)),
                    ),
                    Text(
                      'IRRIGATION',
                      style: GoogleFonts.ebGaramond(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/irri');
                      },
                      icon: Icon(Icons.arrow_forward_ios_sharp),
                      iconSize: 30,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            elevation: 20,
            color: Colors.greenAccent.shade400,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            child: SizedBox(
              width: 320,
              height: 110,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 90,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/soil.png'),
                              fit: BoxFit.fill)),
                    ),
                    Text(
                      'SOIL CONDITION',
                      style: GoogleFonts.ebGaramond(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/soilcon');
                      },
                      icon: Icon(Icons.arrow_forward_ios_sharp),
                      iconSize: 30,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            elevation: 20,
            color: Colors.greenAccent.shade400,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            child: SizedBox(
              width: 320,
              height: 110,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 90,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/weather.png'),
                              fit: BoxFit.fill)),
                    ),
                    Text(
                      'WEATHER',
                      style: GoogleFonts.ebGaramond(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/weather');
                      },
                      icon: Icon(Icons.arrow_forward_ios_sharp),
                      iconSize: 30,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            elevation: 20,
            color: Colors.greenAccent.shade400,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            child: SizedBox(
              width: 320,
              height: 110,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 90,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/animal.png'),
                              fit: BoxFit.fill)),
                    ),
                    Text(
                      'ANIMAL MONITOR',
                      style: GoogleFonts.ebGaramond(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/animal');
                      },
                      icon: Icon(Icons.arrow_forward_ios_sharp),
                      iconSize: 30,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            elevation: 20,
            color: Colors.greenAccent.shade400,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            child: SizedBox(
              width: 320,
              height: 110,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 90,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/fertilizer.png'),
                              fit: BoxFit.fill)),
                    ),
                    Text(
                      'FERTILIZER',
                      style: GoogleFonts.ebGaramond(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed('/fertilizer');
                      },
                      icon: Icon(Icons.arrow_forward_ios_sharp),
                      iconSize: 30,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            elevation: 20,
            color: Colors.greenAccent.shade400,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            child: SizedBox(
              width: 320,
              height: 110,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 90,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/insectsweed.png'),
                              fit: BoxFit.fill)),
                    ),
                    Text(
                      'INSECTS&WEEDS',
                      style: GoogleFonts.ebGaramond(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/insect');
                      },
                      icon: Icon(Icons.arrow_forward_ios_sharp),
                      iconSize: 30,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            elevation: 20,
            color: Colors.greenAccent.shade400,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            child: SizedBox(
              width: 320,
              height: 110,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 90,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/login1.png'),
                              fit: BoxFit.fill)),
                    ),
                    Text(
                      'OTHERS',
                      style: GoogleFonts.ebGaramond(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/firs');
                      },
                      icon: Icon(Icons.arrow_forward_ios_sharp),
                      iconSize: 30,
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
