import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Object tril;

  @override
  void initState() {
    tril = Object(
      fileName: "assets/sculpt/shoe.obj",
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: addButtons(),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 46,
            width: double.infinity,
          ),
          Flexible(
            child: Container(
              color: const Color.fromARGB(255, 218, 181, 20),
              width: double.infinity,
              height: 300,
              child: Cube(
                onSceneCreated: ((scene) {
                  scene.world.add(tril);

                  scene.camera.zoom = 10;
                }),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 10),
                const Text(
                  'Shoe k 77',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Introducing the shoe, a vibrant and stylish addition to your footwear collection! ..',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                siZebox(),
                const Text(
                  'Colors',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                siZebox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 163, 34, 120),
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 83, 83, 83),
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow,
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
                siZebox(),
                const Image(
                  image: AssetImage('assets/sculpt/reviews.jpg'),
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox siZebox() {
    return const SizedBox(
      height: 20,
    );
  }

  Row addButtons() {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(20),
              backgroundColor: Colors.white,
              side: const BorderSide(width: 2, color: Colors.yellow),
            ),
            onPressed: () {
              // Add to Cart logic here
            },
            child: const Text(
              'Add to Cart',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(20),
              backgroundColor: Colors.yellow,
            ),
            onPressed: () {
              // Buy Now logic here
            },
            child: const Text(
              'Buy Now',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
