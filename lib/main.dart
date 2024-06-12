import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: BasicsPage(),
    );
  }
}

class BasicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var platform = Theme.of(context).platform;
    print("size : $size");
    print("platform : $platform");
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.code),
        title: Text("Developer Forever"),
        backgroundColor: Color.fromARGB(255, 241, 5, 230),
        actions: [
            Icon(Icons.person),
            Icon(Icons.menu),
          ],
          centerTitle: true,
        ),
      body: Container(
          height: size.height,
          width: size.width,
          color: Color.fromRGBO(129, 127, 129, 1),
          //margin: EdgeInsets.all(10),
          //padding: EdgeInsets.only(top: 150),
          child: Center(
            child : Card(
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.min,
                  children: [
                    fromAsset(),
                  ],
                ),
              ),
                elevation: 15,
            ),
          )
        ),
    );
  }

  Text simpleText(String text) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.w200,
          fontStyle: FontStyle.italic),
      textAlign: TextAlign.center,
    );
  }

  Image fromNetwork(Size size) {
    return Image.network(
              "https://images.pexels.com/photos/2047905/pexels-photo-2047905.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            );
  }

  Image fromAsset() {
    return Image.asset(
              "images/imageDemo.jpg",
            );
  }

  Text textRichDemo() {
    return Text.rich(
      TextSpan(
          text: "S",
          style: TextStyle(fontSize: 20, color: Colors.white),
          children: [
            TextSpan(
              text: "aa",
              style: TextStyle(fontSize: 25, color: Colors.blue),
            ),
            TextSpan(
              text: "X",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ]),
    );
  }
}
