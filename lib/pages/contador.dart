import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/button.dart';

class ContView extends StatefulWidget {
  const ContView({super.key});

  @override
  State<ContView> createState() => _ContViewState();
}

class _ContViewState extends State<ContView> {
  int _counter = 0;
  String _backgroundImagePath = 'assets/fondos/fondopantalla.jpeg';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _changeBackgroundImage() {
    setState(() {
      _backgroundImagePath = 'assets/fondos/fondopantalla2.jpg';
    });
  }

  void _changeBackgroundImage2() {
    setState(() {
      _backgroundImagePath = 'assets/fondos/fondopantalla.jpeg';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                  image: AssetImage(_backgroundImagePath), fit: BoxFit.cover)),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SafeArea(child: SizedBox.shrink()),
            Text(
              textAlign: TextAlign.center,
              'Cambiar el fondo',
              style: GoogleFonts.ubuntu(
                textStyle: Theme.of(context).textTheme.displayMedium,
                fontSize: 30.0,
                color: Colors.white,
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                      onTap: () {
                        _changeBackgroundImage();
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30.0,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/fondos/fondopantalla2.jpg'),
                          radius: 25.0,
                        ),
                      ))),
              Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                      onTap: () {
                        _changeBackgroundImage2();
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30.0,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/fondos/fondopantalla.jpeg'),
                          radius: 25.0,
                        ),
                      )))
            ]),
            Expanded(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  '$_counter',
                  style: GoogleFonts.montserrat(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 90,
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox.fromSize(),
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Button(
                        text: "-",
                        onPressed: () {
                          _decrementCounter();
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox.fromSize(),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Button(
                        text: "Limpiar",
                        onPressed: () {
                          _resetCounter();
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox.fromSize(),
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Button(
                        text: "+",
                        onPressed: () {
                          _incrementCounter();
                        },
                      ),
                    ),
                  ],
                )
              ],
            ))
          ])),
    );
  }
}
