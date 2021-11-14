import 'dart:math';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(const SplashScreen());
}

class SplashScreen extends StatefulWidget {
  static const style = TextStyle(
    color: Colors.white,
    fontSize: 30,
    fontWeight: FontWeight.w600,
  );

  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  int page = 0;
  late LiquidController liquidController;
  late UpdateType updateType;

  @override
  void initState() {
    liquidController = LiquidController();
    super.initState();
  }

  final pages = [
    Container(
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(
              'assets/1a.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: const [
              Text(
                "Seed",
                style: SplashScreen.style,
              ),
              Text(
                "your future with",
                style: SplashScreen.style,
              ),
              Text(
                "Technology",
                style: SplashScreen.style,
              ),
              Text(
                "",
                style: SplashScreen.style,
              ),
              Text(
                "",
                style: SplashScreen.style,
              ),
              Text(
                "",
                style: SplashScreen.style,
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      color: const Color(0xFF232323),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/login1.png',
            fit: BoxFit.cover,
          ),
          Column(
            children: const [
              Text(
                "Automate your",
                style: SplashScreen.style,
              ),
              Text(
                "farm work from",
                style: SplashScreen.style,
              ),
              Text(
                "home",
                style: SplashScreen.style,
              ),
              Text(
                "",
                style: SplashScreen.style,
              ),
              Text(
                "",
                style: SplashScreen.style,
              ),
              Text(
                "",
                style: SplashScreen.style,
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      color: const Color(0xFF460BA1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/login2.png',
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
          ),
          Column(
            children: const [
              Text(
                "Work from",
                style: SplashScreen.style,
              ),
              Text(
                "home with",
                style: SplashScreen.style,
              ),
              Text(
                "Agriculture!",
                style: SplashScreen.style,
              ),
              Text(
                "",
                style: SplashScreen.style,
              ),
              Text(
                "",
                style: SplashScreen.style,
              ),
              Text(
                "",
                style: SplashScreen.style,
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      color: Colors.deepOrange.shade700,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Image.asset(
              'assets/login7.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: const [
              Text(
                "Live ",
                style: SplashScreen.style,
              ),
              Text(
                "Updates",
                style: SplashScreen.style,
              ),
              Text(
                "of Farm",
                style: SplashScreen.style,
              ),
              Text(
                "",
                style: SplashScreen.style,
              ),
              Text(
                "",
                style: SplashScreen.style,
              ),
              Text(
                "",
                style: SplashScreen.style,
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 130),
            child: Image.asset(
              'assets/animal.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: const [
              Text(
                "Lets",
                style: SplashScreen.style,
              ),
              Text(
                "explore the",
                style: SplashScreen.style,
              ),
              Text(
                "future",
                style: SplashScreen.style,
              ),
              Text(
                "",
                style: SplashScreen.style,
              ),
              Text(
                "",
                style: SplashScreen.style,
              ),
              Text(
                "",
                style: SplashScreen.style,
              ),
            ],
          ),
        ],
      ),
    ),
  ];

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((page) - index).abs(),
      ),
    );
    double zoom = 1.0 + (2.0 - 1.0) * selectedness;
    return SizedBox(
      width: 25.0,
      child: Center(
        child: Material(
          color: Colors.white,
          type: MaterialType.circle,
          child: SizedBox(
            width: 8.0 * zoom,
            height: 8.0 * zoom,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              LiquidSwipe(
                pages: pages,
                slideIconWidget: const Icon(Icons.arrow_back_ios),
                onPageChangeCallback: pageChangeCallback,
                waveType: WaveType.liquidReveal,
                liquidController: liquidController,
                enableSideReveal: true,
                ignoreUserGestureWhileAnimating: true,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    const Expanded(child: SizedBox()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List<Widget>.generate(pages.length, _buildDot),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/login');
                    },
                    child: const Text("Skip",
                        style: TextStyle(color: Colors.white, fontSize: 25)),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: TextButton(
                    onPressed: () {
                      liquidController.jumpToPage(
                          page: liquidController.currentPage + 1 >
                                  pages.length - 1
                              ? 0
                              : liquidController.currentPage + 1);
                    },
                    child: const Text("Next",
                        style: TextStyle(color: Colors.white, fontSize: 25)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  pageChangeCallback(int lpage) {
    setState(() {
      page = lpage;
    });
  }
}
