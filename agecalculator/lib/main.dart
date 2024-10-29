// main.dart
import 'package:flutter/material.dart';
import 'resturant.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Age Calculator',
      debugShowCheckedModeBanner: false,
      home: AgeCalculator(),
    );
  }
}

class AgeCalculator extends StatefulWidget {
  const AgeCalculator({super.key});

  @override
  _AgeCalculatorState createState() => _AgeCalculatorState();
}

class _AgeCalculatorState extends State<AgeCalculator> {
  final TextEditingController _ageController = TextEditingController();
  String _birthYear = '';

  void calculateBirthYear() {
    int age = int.tryParse(_ageController.text) ?? 0;

    if (age <= 0) {
      setState(() {
        _birthYear = 'Fadlan gali da\' sax ah (wax ka weyn 0).';
      });
    } else {
      int currentYear = DateTime.now().year;
      int birthYear = currentYear - age;

      setState(() {
        _birthYear = 'Sanadka aad dhalatay waa: $birthYear';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Xisaabi Sanadka Dhalashada'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _ageController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Gali Da\'daada',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateBirthYear,
              child: const Text('Xisaabi'),
            ),
            const SizedBox(height: 20),
            Text(
              _birthYear,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the RestaurantMenu screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RestaurantMenu()),
                );
              },
              child: const Text('Go to Restaurant Menu'),
            ),
          ],
        ),
      ),
    );
  }
}
