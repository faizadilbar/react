import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isLiked = false;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image
            Image.asset(
              'assets/images/view3.jpg', // Ensure this path is correct
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 10), // Space between image and text

            // Like Count Text
            Text(
              'Like: $count',
              style: const TextStyle(fontSize: 18),
            ),

            // Like Button
            IconButton(
              icon: Icon(
                Icons.favorite,
                size: 50,
                color: isLiked ? Colors.red : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  isLiked = !isLiked;
                  count = isLiked ? count + 1 : count - 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
