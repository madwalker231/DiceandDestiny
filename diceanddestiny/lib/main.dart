import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:faker/faker.dart';
import 'firebase_options.dart'; 

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
      title: 'Flutter Demo',
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
  String? _generatedName; // Variable to store generated name

  void _submitData() async {
    final username = _usernameController.text;
    final password = _passwordController.text;

    // Add code to send data to Firebase
    await FirebaseFirestore.instance.collection('user').add({
      'username': username,
      'password': password,
    });

    // Clear text fields after submission
    _usernameController.clear();
    _passwordController.clear();
  }

  String _generateRandomName() {
    final faker = Faker(); // Initialize Faker

    // Generate a random name using the faker package
    return faker.person.firstName();
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
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final randomName = _generateRandomName();
                setState(() {
                  _generatedName = randomName; // Set the generated name
                });
                if (kDebugMode) {
                  print('Random Name: $randomName');
                }
              },
              child: const Text('Generate Random Name'),
            ),
            if (_generatedName != null) // Show generated name if available
              const SizedBox(height: 16),
              Text(
                'Generated Name: $_generatedName',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}