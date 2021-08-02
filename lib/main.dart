import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ITI App",
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.red,
      ),
      home: ITIScreen(),
    );
  }
}

class ITIScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ITI Screen"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          margin: EdgeInsets.all(30),
          child: Center(
            child: Column(
              children: [
                Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/2560px-Google-flutter-logo.svg.png"),
                Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/2560px-Google-flutter-logo.svg.png"),
                Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/2560px-Google-flutter-logo.svg.png"),
                Container(
                  height: 120,
                  width: 120,
                  color: Colors.red,
                  child: Text(
                    "0",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
                Icon(Icons.access_time_sharp),
                Container(
                  height: 110,
                  width: 110,
                  color: Colors.blue,
                  child: Text(
                    "Counter : jkcdjkscd ",
                    // maxLines: 1,
                    style: TextStyle(
                      // color: Color(0x91DB7D7D),
                      fontSize: 30,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Clicked");
                  },
                  child: Text("Click"),
                ),
                IconButton(
                  icon: Icon(Icons.accessibility),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Click"),
      ),
    );
  }
}
