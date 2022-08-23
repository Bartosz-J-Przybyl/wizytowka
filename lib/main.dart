import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            image: DecorationImage(
              opacity: 0.7,
              image: AssetImage("images/w.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage("images/bjp.jpg"),
                radius: 100,
              ),
              const SizedBox(height: 20),
              Text("Bartosz Jarosław Przybył",
                  style: GoogleFonts.tangerine(
                    fontSize: 45,
                    color: Colors.black,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.mail_lock,
                      color: Color.fromARGB(255, 13, 14, 13), size: 30),
                  Icon(Icons.phone_android,
                      color: Color.fromARGB(255, 13, 14, 13), size: 30),
                  Icon(Icons.facebook_outlined,
                      color: Color.fromARGB(255, 13, 14, 13), size: 30),
                ],
              ),
              const SizedBox(height: 40),
              Text("Kocham Dziubasową",
                  style: GoogleFonts.pacifico(
                    fontSize: 30,
                  )),
              Text("ponad wszystko !!!",
                  style: GoogleFonts.pacifico(
                    fontSize: 20,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
