import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_1/pages/contador.dart';

import '../widget/button.dart';

class ConfView extends StatefulWidget {
  const ConfView({super.key});

  @override
  State<ConfView> createState() => _ConfViewState();
}

class _ConfViewState extends State<ConfView> {
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
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/fondos/fondopantalla2.jpg'),
                fit: BoxFit.cover)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            textAlign: TextAlign.center,
            '¿Cuanto va a incrementar?',
            style: GoogleFonts.ubuntu(
              textStyle: Theme.of(context).textTheme.displayMedium,
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 300,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {});
                },
                decoration: const InputDecoration(
                  filled: true,
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.transparent,
                  labelText: "1,2,3...",
                  labelStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 16),
                ),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: GoogleFonts.ubuntu(
                  textStyle: Theme.of(context).textTheme.displayMedium,
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Button(text: "Mostrar", onPressed: () {})))
          ])
        ]),
      ),
    );
  }
}
