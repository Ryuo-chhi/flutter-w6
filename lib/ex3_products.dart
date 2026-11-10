import 'package:flutter/material.dart';

// EX 3 – The products (handout page: EX 3)
// Part 1: build ONE product card (images are in assets/ex3/).
// Part 2: create the Product enum (follow the UML in the handout).
// Part 3: extract the card into a StatelessWidget called ProductCard.

enum Product {
  dart(
      title: "Dart",
      description: "The best object-oriented language",
      image: "assets/ex3/dart.png"),
  flutter(
      title: "Flutter",
      description: "The best mobile widget library",
      image: "assets/ex3/flutter.png"),
  firebase(
      title: "Firebase",
      description: "The best cloud database",
      image: "assets/ex3/firebase.png");

  final String title;
  final String description;
  final String image;

  const Product({
    required this.title,
    required this.description,
    required this.image,
  });
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.blue,
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ProductCard(
                  product: Product.dart,
                ),
                ProductCard(
                  product: Product.flutter,
                ),
                ProductCard(
                  product: Product.firebase,
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image(
            image: AssetImage(
              product.image,
            ),
            height: 100,
          ),
          Text(
            product.title,
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            product.description,
            style: TextStyle(color: Colors.grey),
          ),
        ]),
      ),
    );
  }
}
