import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/profile.dart';

class Newstand extends StatefulWidget {
  const Newstand({super.key});

  @override
  State<Newstand> createState() => _NewstandState();
}

class _NewstandState extends State<Newstand> {
  int selectedIndex = 1; // Newsstand tab is index 1

  final List<Map<String, String>> productNews = [
    {
      'title': 'Air Jordan 11 H-Town Release',
      'description':
          'Nike announced the release of the Air Jordan 11 H-Town, inspired by Houstons car culture. The sneaker features a creamy silk suede upper,  light blue sole, Chrome Jumpman logo, and white accents. It is part of a broader Jordan 11 collection celebrating the iconic sneakers legacy.',
    },
    {
      'title': 'NikeSKIMS Collection Launch',
      'description':
          'TKim Kardashian launched the first NikeSKIMS collection in collaboration with Nike. The collection features seven distinct lines and 58 different silhouettes, offering over 10,000 potential outfit combinations. It aims to deliver performance apparel that transitions seamlessly from studio to streetwear.',
    },
    {
      'title': 'Caitlin Clarks New Logo with Nike',
      'description':
          'Basketball star Caitlin Clark unveiled her new personal logo with Nike. The logo features interlocking C’s representing her initials and will be featured on a full collection releasing in 2026, including hoodies, shirts, shorts, and pants for all ages.',
    },
    {
      'title': 'Nike Exhibit 10×20',
      'description':
          'Nikes Exhibit 10×20 showcases their products in a compact and engaging format. The exhibit includes displays of Nike basketball shoes and apparel, allowing customers to experience the products up close.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        centerTitle: true,
        title: Image.network(
          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMIAAACUCAMAAAD26AbpAAAAY1BMVEUAAAD////8/PyysrL39/d/f3/Ozs4sLCyvr6+GhoY3Nzfq6urX19fv7+/f398vLy+np6dsbGxAQEAnJycPDw9kZGSUlJRISEi7u7tVVVWMjIx0dHSenp7BwcEICAgXFxceHh6KeE/MAAADbElEQVR4nO3a2YKiMBAFUMO+JQRadrD9/68cUHsE2QIE8OGeZ02qJFRS4OUCAAAAAAAAAAAAAAAAAAAAAABwkvDsAJ7Mn9Vf1b8hBSfOk9+1Xy74VWYsayQqNbKf1WFkLJIZzULXMLMNhabOhjFMlt6kBbTQPYotRogRr78JGoYWSApoISdXDZcQRS22JXBJiScnomUyzqhCanG4+h5+UYly8EW4OllukAeN6dvHixVCt48izg/sZvE/uKqMHy/QCLEkjCMmqRc/fcVPWJnJGPPeDHjQthZZzNX+4idetKWIvv02l5Tuvq1d/ST3SAut5MRfZ1A146WSRhsRRrrqtuNXPL6xhrbEj6ImoSaMynLL00gngdSWl8AlfA6+2+EiUNuL/1lEeXSXOcVzeCqlLnRd707JyCeF6pIPMtWrtskuSE6kp7QXP3GNQvJEF/11jT1ZxaFxqxe/ofXjJ4zLX6/J34U25KVQpJ6rDMRPPDuRNsmbSuSmUC9+bTD8eob1vdiU6H2JN/9ATqZXQ4vncQszy5QR74B3vdhWka5Rzo2R8OsEtrYyE+LWPOvvM19PDXc0fqJYW1uZCU67aJfrxghLRseWT0OLwz0PX1Z7rsXHvFuz+CeCb+Jn0jeBrqS7cy6azYxs3t94u5iUVmZS3p3RFb4Mjj25+F8JyGllJt0/f0VV6GsJ753aBniBzN1+TNabl09/4dcJbW8g3B6a7leCOgbq+EQO/mfLMkbxyr12sZ6h+dPhPTqpF//AqXMogVQ/LIFLMRiCq/qfHxxoWcZoPLsflsDgOnplwYvQN03T95OiFPzxHxfAld3KzJmp6iPHzVE7tDJzMqF7UxQrT3iubwsubxH7tDKzuLQEjM2PpFdS52MTULcyB+1iO6WgVPu1MvNu6fYMeHBiApfmpc42dStz2pu5l00LibKTXst1WPOBjjmglRESL91+/ycQ79/KiInEDz9tx7QygoSalw6Fpvezo+4olybglb1z+NkWHZIObWWE6QsSOLaVEXadeY71P34Zr+Z3Eorc0Se0Mktkc8/jiPE1m8AYZ/yBOmma+W/aBMbc8pG6pGhVdvq/3ASZFvvMgjKPf/v66TJtXj3/1qRorldZZfEN/5Nc6ieJgqIogigLz+1iAAAAAAAAAAAAAAAAAAAAAL7QP7HPJjggPKIkAAAAAElFTkSuQmCC',
          height: 30,
          alignment: Alignment.centerLeft,
        ),
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Color.fromARGB(255, 164, 40, 31)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: productNews.length,
          itemBuilder: (context, index) {
            final news = productNews[index];
            return Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      news['title'] ?? '',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      news['description'] ?? '',
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: const Color.fromARGB(134, 170, 159, 159),
        onTap: (index) {
          if (index == selectedIndex) return;

          setState(() {
            selectedIndex = index;
          });

          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            );
          } else if (index == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Profile()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.news),
            label: 'News Stand',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
