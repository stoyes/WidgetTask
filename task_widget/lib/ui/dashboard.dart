import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Commerce'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: SizedBox(
                width: viewportConstraints.maxWidth,
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image(
                        image: NetworkImage(
                            'https://picsum.photos/id/60/400'),
                      ),
                    ),
                    ProductList(),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image(
                        image: NetworkImage(
                            'https://picsum.photos/id/90/400'),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ProductImage(
              rndSeed: 1,
              name: "Lukisan 2",
              price: 300000,
            ),
            ProductImage(
              rndSeed: 2,
              name: "Lukisan 1",
              price: 5000000,
            ),
            ProductImage(
              rndSeed: 3,
              name: "Lukisan 3",
              price: 4000000,
            ),
          ],
        ),
      ),
    );
  }
}

class ProductImage extends StatelessWidget {
  final int rndSeed;
  final String name;
  final double price;

  const ProductImage({
    super.key,
    this.rndSeed = 1,
    this.name = "Product Name",
    this.price = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Image(
            image: NetworkImage('https://picsum.photos/200/?random=$rndSeed'),
          ),
          const SizedBox(height: 4),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Rp. $price",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}