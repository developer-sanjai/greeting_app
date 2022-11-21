import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "GREETING APP",
    theme: ThemeData(primarySwatch: Colors.deepPurple),
    home: const Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<StatefulWidget> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String _name = "";

  void _getname(value) {
    setState(() {
      _name = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          onPressed: null,
          icon: Icon(Icons.menu, color: Colors.white),
        ),
        title: const Text("WELCOME"),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('images/images.png'),
            width: 200,
            height: 200,
          ),
          const Text(
            "GREETING APP",
            style: TextStyle(color: Colors.deepPurple, fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.all(28),
            child: TextField(
              onChanged: _getname,
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(), hintText: "Enter your name"),
            ),
          ),
          Text(
            "Hello $_name",
            style: const TextStyle(fontSize: 20, fontFamily: "Times New Roman"),
          )
        ],
      )),
    );
  }
}
