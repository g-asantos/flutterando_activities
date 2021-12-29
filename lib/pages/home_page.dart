import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
            padding: const EdgeInsets.only(top: 109, left: 21, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Expanded(
                        child: Image(
                      height: 50,
                      image: AssetImage('assets/logo.png'),
                    )),
                    const Expanded(
                      child: ListTile(
                        title: Text(
                          "Atividades",
                          style: TextStyle(fontFamily: 'poppins'),
                        ),
                        subtitle: Text("Flutterando Masterclass"),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        iconSize: 47,
                        icon: Image.asset('assets/Icon awesome-moon.png'),
                        onPressed: () {},
                      ),
                    )
                  ],
                )
              ],
            )),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
