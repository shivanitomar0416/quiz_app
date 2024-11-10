import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Stack(
        children: [
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover, 
              child: Image.asset('assets/images/home_screen.jpg'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => LoginScreen()), 
                // );
              },
              child: const Text('Login to the quiz'),
            ),
          ),
        ],
      ),
    );
  }
}
