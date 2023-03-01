import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MyHomePage(title: '«Инкремент»'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _dincrementCounter() {
    setState(() {
      _counter--;
    });
  }
    void _dropCounter() {
    setState(() {
      _counter=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Значение инкремента:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: _dincrementCounter,
                    child: Text(
                      "-",
                      style: TextStyle(fontSize: 22),
                    )),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 22),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.red)),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: _dropCounter,
              child: Text(
                "Сбросить",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                  shadowColor: MaterialStatePropertyAll(Colors.transparent),
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20))),
            ),
          ],
        ),
      ),
    );
  }
}
