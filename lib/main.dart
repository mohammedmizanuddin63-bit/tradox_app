import 'package:flutter/material.dart';

void main() {
  runApp(const TradoxApp());
}

class TradoxApp extends StatelessWidget {
  const TradoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tradox Helper',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String result = "কোনো স্ক্রিনশট এখনো দেওয়া হয়নি";

  void analyzeScreenshot() {
    setState(() {
      result = "Next candle: UP (ডেমো result)";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tradox Helper")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(result, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: analyzeScreenshot,
              child: const Text("Analyze Screenshot"),
            ),
          ],
        ),
      ),
    );
  }
}
