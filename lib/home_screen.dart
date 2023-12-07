import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final textFieldController1 = TextEditingController();
  final textFieldController2 = TextEditingController();

  @override
  void dispose() {
    textFieldController1.dispose();
    textFieldController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Hello World'),
              const SizedBox(height: 20),
              TextField(
                controller: textFieldController1,
                decoration: const InputDecoration(hintText: 'Input 1'),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: textFieldController2,
                decoration: const InputDecoration(hintText: 'Input 2'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
