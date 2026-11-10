import 'package:flutter/material.dart';

// EX 1 – The hobbies (handout page: EX 1)
// Part 1: build ONE hobby card.
// Part 2: extract it into a StatelessWidget called HobbyCard, then show several cards.

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Column(
              spacing: 10,
              children: [
                HobbyCard(
                  text: "Travelling",
                  icon: Icons.travel_explore,
                  color: Colors.green,
                ),
                HobbyCard(
                  text: "Skating",
                  icon: Icons.skateboarding,
                  color: Colors.blueGrey,
                ),
                
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

class HobbyCard extends StatelessWidget {
  const HobbyCard({super.key, required this.text, required this.icon, required this.color});
  final String text;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: this.color, borderRadius:  BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  this.icon,
                  color: Colors.white,
                ),
              ),
              Text(
                this.text,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
