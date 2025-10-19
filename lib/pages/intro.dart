import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const NikeSplashScreen(),
      routes: {'/home': (context) => const Home()},
    );
  }
}

class NikeSplashScreen extends StatefulWidget {
  const NikeSplashScreen({super.key});

  @override
  State<NikeSplashScreen> createState() => _NikeSplashScreenState();
}

class _NikeSplashScreenState extends State<NikeSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              Color(0xFFcc3b00), // orange-red gradient
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Nike background text + shoe image
            Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 20,
                  child: Text(
                    'NIKE\nNIKE\nNIKE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.white.withOpacity(0.15),
                      fontSize: 65,
                      fontWeight: FontWeight.w100,
                      height: 0.9,
                    ),
                  ),
                ),
                // Shoe image
                Image.network(
                  'https://png.pngtree.com/png-vector/20230817/ourmid/pngtree-orange-and-grey-nike-sneaker-illustration-clipart-vector-png-image_7005184.png',
                  width: 180,
                ),
              ],
            ),

            const SizedBox(height: 40),

            const Text(
              'LIVE YOUR\nPERFECT\nJUST DO IT"',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Smart, gorgeous & fashionable\ncollection makes you cool',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),

            const SizedBox(height: 60),

            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15),
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(15),
                    child: const Icon(
                      Icons.keyboard_arrow_up_rounded,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
