import 'package:ebook/pages/home/home.dart';
import 'package:ebook/ui_components/round_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E_Book',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Bitmap.png'),
          fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.displayMedium,
                  children: const [
                    TextSpan(
                      text: 'flamin',
                    ),
                    TextSpan(
                      text: 'go.',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ]
                )),
            RoundButton(
              text: 'start reading',
              verticalPadiing: 13,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder:(context) => const Home(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}




