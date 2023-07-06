import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_1/widget/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto N°1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Proyecto N°1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _backgroundImagePath = 'assets/fondos/fondopantalla.jpeg';

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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    }
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
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
          image: DecorationImage(
            image: AssetImage(_backgroundImagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SafeArea(child: SizedBox.shrink()),
            Text(
              textAlign: TextAlign.center,
              'Cambiar el fondo',
              style: GoogleFonts.ubuntu(
                textStyle: Theme.of(context).textTheme.displayMedium,
                fontSize: 30.0,
                color: Colors.white,
              ),
            ), // Inicio botones background
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: _changeBackgroundImage,
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/fondos/fondopantalla2.jpg'),
                      radius: 25.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                    onTap: _changeBackgroundImage2,
                    child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30.0,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/fondos/fondopantalla.jpeg'),
                          radius: 25.0,
                        ))),
              ),
            ]), // Fin Botones background
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
                  // Botones del contador
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SizedBox.fromSize(),
                        ),
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: Button(
                            text: "-",
                            onPressed: _decrementCounter,
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
                            onPressed: _resetCounter,
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
                            onPressed: _incrementCounter,
                          ),
                        ),
                      ]),
                ],
              ),
            ) // Fin Botones contador
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: const TextStyle(
          color: Colors.white,
          fontSize: 15.0,
        ),
        selectedLabelStyle: const TextStyle(
          color: Colors.white,
          fontSize: 15.0,
        ),
        iconSize: 20,
        elevation: 0,
        currentIndex: 0,
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.access_time,
              color: Colors.white,
            ),
            label: 'Contador',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            label: 'Configuración',
          ),
        ],
      ),
    );
  }
}
