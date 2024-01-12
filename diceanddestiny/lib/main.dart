// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:faker/faker.dart';
import 'firebase_options.dart';
import 'random_item_gen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice and Destiny',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(98, 58, 107, 148)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Dice and Destiny'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void _submitData() async {
    final username = _usernameController.text;
    final password = _passwordController.text;

    if (username.isEmpty || password.isEmpty) {
      // Show error message if username or password is empty
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('Please enter both username and password.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      // Add code to send data to Firebase
      await FirebaseFirestore.instance.collection('user').add({
        'username': username,
        'password': password,
      });

      // Clear text fields after submission
      _usernameController.clear();
      _passwordController.clear();

      // Navigate to Game Master and Player selection screen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const GamePlayerSelectionScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _submitData,
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

class GamePlayerSelectionScreen extends StatelessWidget {
  const GamePlayerSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Role'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuScreen(role: 'Game Master')),
                );
              },
              child: const Text('Game Master'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuScreen(role: 'Player')),
                );
              },
              child: const Text('Player'),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuScreen extends StatelessWidget {
  final String role;

  MenuScreen({Key? key, required this.role}) : super(key: key);

  String _generateRandomName() {
    final faker = Faker();
    return faker.person.firstName();
  }

  // Create an instance of RandomItemGenerator
  final RandomItemGenerator randomItemGenerator = RandomItemGenerator();

  // Function to generate a random item
  Item _generateRandomItem() {
    final item = Item();
    item.randomize(db); // Ensure this method generates random values for the item
    return item;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$role Menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final randomName = _generateRandomName();
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Generated Name'),
                      content: Text('Random Name: $randomName'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Generate Random Name'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final randomItem = _generateRandomItem();
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Generated Item'),
                      content: Column(
                        children: [
                          Text('Random Level: ${randomItem.level}'),
                          Text('Random Slot: ${randomItem.slot}'),
                          Text('Random Item Name: ${randomItem.name}'),
                          // Add more information as needed
                        ],
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Generate Random Item'),
            ),
          ],
        ),
      ),
    );
  }
}

