import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza Store App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        textTheme: TextTheme(
          bodyText2: TextStyle(fontSize: 18, color: Colors.grey[800]),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/vpizza': (context) => const VPizzaScreen(),
        '/chpizza': (context) => const ChPizzaScreen(),
        '/fries': (context) => const FriesScreen(),
        '/twitter': (context) => const TwitterScreen(),
        '/facebook': (context) => const FacebookScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WOW Pizza'),
        backgroundColor: Colors.orange[800],
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () => Navigator.pushNamed(context, '/twitter'),
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () => Navigator.pushNamed(context, '/facebook'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset('assets/5.jpg', width: MediaQuery.of(context).size.width, fit: BoxFit.cover),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Text(
                "Hi, I'm the Pizza Assistant, what can I help you order?",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonPadding: const EdgeInsets.symmetric(horizontal: 30),
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/vpizza'),
                  child: const Text('Vegetable Pizza'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/chpizza'),
                  child: const Text('Cheese Pizza'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/fries'),
                  child: const Text('Fries'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class VPizzaScreen extends StatelessWidget {
  const VPizzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vegetable Pizza'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/1.jpg',
                height: 300, // Constrain the image height to avoid overflow
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/chpizza'),
                child: const Text('Next Screen'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChPizzaScreen extends StatelessWidget {
  const ChPizzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cheese Pizza'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/2.jpg'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/fries'),
              child: const Text('Next Screen'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}

class FriesScreen extends StatelessWidget {
  const FriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fries'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Fries"),
            Image.asset('assets/4.jpg', height: 200),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/twitter'),
              child: const Text('Next Screen'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}

class TwitterScreen extends StatelessWidget {
  const TwitterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Twitter"),
        backgroundColor: Colors.blue[800],
      ),
      body: const WebView(
        initialUrl: 'https://www.twitter.com',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}


class FacebookScreen extends StatelessWidget {
  const FacebookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Facebook"),
        backgroundColor: Colors.blue[800],
      ),
      body: const WebView(
        initialUrl: 'https://www.facebook.com',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
