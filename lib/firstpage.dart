import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:glassmorphism/glassmorphism.dart';

import 'firstpage_body.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  _firstpageState createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  DateTime? selectedDate;
  Random random = new Random();
  int activeIndex = 0;
  int currentIndex = 0;
  final _advancedDrawerController = AdvancedDrawerController();
  Icon customicon = const Icon(Icons.search);
  Widget customsearch = Text(
    '            Agri Tech',
    style: GoogleFonts.ebGaramond(
      textStyle: TextStyle(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
    ),
  );

  @override
  void initState() {
    setState(() {
      selectedDate = DateTime.now();
    });
    Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {
        activeIndex++;

        if (activeIndex == 4) activeIndex = 0;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: Colors.greenAccent,
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 0.0,
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      drawer: SafeArea(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 128.0,
                height: 128.0,
                margin: const EdgeInsets.only(
                  top: 24.0,
                  left: 20,
                  bottom: 10.0,
                ),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Image.asset(
                  'assets/1a.png',
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30),
                child: GlassmorphicContainer(
                  width: 300,
                  height: 500,
                  borderRadius: 20,
                  blur: 1000,
                  alignment: Alignment.bottomCenter,
                  border: 2,
                  linearGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFffffff).withOpacity(0.1),
                        Color(0xFFFFFFFF).withOpacity(0.7),
                      ],
                      stops: [
                        0.1,
                        1,
                      ]),
                  borderGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFffffff).withOpacity(0.5),
                      Color((0xFFFFFFFF)).withOpacity(0.5),
                    ],
                  ),
                  child: Container(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: Colors.white10),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    iconSize: 34,
                                    onPressed: () {},
                                    icon: Icon(Icons.manage_accounts),
                                  ),
                                  Text(
                                    'PROFILE',
                                    style: GoogleFonts.cinzel(
                                      textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: Colors.white10),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    iconSize: 34,
                                    onPressed: () {},
                                    icon: Icon(Icons.notifications),
                                  ),
                                  Text(
                                    'NOTIFY',
                                    style: GoogleFonts.cinzel(
                                      textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: Colors.white10),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    iconSize: 34,
                                    onPressed: () {},
                                    icon: Icon(Icons.location_on),
                                  ),
                                  Text(
                                    'FIELD VIEW',
                                    style: GoogleFonts.cinzel(
                                      textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: Colors.white10),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    iconSize: 34,
                                    onPressed: () {},
                                    icon: Icon(Icons.settings),
                                  ),
                                  Text(
                                    'SETTING',
                                    style: GoogleFonts.cinzel(
                                      textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: Colors.white10),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    iconSize: 34,
                                    onPressed: () {},
                                    icon: Icon(Icons.share),
                                  ),
                                  Text(
                                    ' SHARE',
                                    style: GoogleFonts.cinzel(
                                      textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.grey.shade300,
          appBar: AppBar(
            backgroundColor: Colors.grey.shade400,
            actions: [
              IconButton(
                iconSize: 30,
                color: Colors.black54,
                onPressed: () {
                  setState(() {
                    if (customicon.icon == Icons.search) {
                      customicon = const Icon(Icons.cancel);
                      customsearch = const ListTile(
                        leading: Icon(
                          Icons.search,
                          color: Colors.black54,
                          size: 28,
                        ),
                        title: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontStyle: FontStyle.italic,
                            ),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      );
                    } else {
                      customicon = const Icon(Icons.search);
                      customsearch = Text(
                        '            Agri Tech',
                        style: GoogleFonts.ebGaramond(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      );
                    }
                  });
                },
                icon: customicon,
              ),
            ],
            title: customsearch,
            elevation: 40,
            leading: IconButton(
              iconSize: 30,
              color: Colors.black54,
              onPressed: _handleMenuButtonPressed,
              icon: ValueListenableBuilder<AdvancedDrawerValue>(
                valueListenable: _advancedDrawerController,
                builder: (_, value, __) {
                  return AnimatedSwitcher(
                    duration: Duration(milliseconds: 250),
                    child: Icon(
                      value.visible ? Icons.clear : Icons.splitscreen,
                      key: ValueKey<bool>(value.visible),
                    ),
                  );
                },
              ),
            ),
          ),
          body: first_body()
          //  Column(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     CalendarAppBar(
          //       locale: 'en',
          //       onDateChanged: (value) => setState(() => selectedDate = value),
          //       firstDate: DateTime.now().subtract(Duration(days: 140)),
          //       lastDate: DateTime.now(),
          //       events: List.generate(
          //           100,
          //           (index) => DateTime.now()
          //               .subtract(Duration(days: index * random.nextInt(5)))),
          //     ),
          //   ],
          // ),
          ),
    );
  }

  void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }
}
