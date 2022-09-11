import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  final String name = " modified app ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                color: Colors.yellow,
                // width: double.infinity,
                // height: double.infinity,
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      TextButton(
                          onPressed: () {
                            print('text button');
                          },
                          child: Text('click me')),
                      IconButton(
                          onPressed: () {
                            print('icon clicked');
                          },
                          icon: Icon(Icons.facebook_rounded)),
                    ]),
                    ElevatedButton(
                      onPressed: () {
                        print('button clicked');
                      },
                      child: Text('button'),
                    )
                  ],
                )),
              ),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: Colors.red,
                  width: 5,
                ),
              ),
              child: Center(
                child: Text('simple text'),
              ),
            )),
            Expanded(
              child: Container(
                color: Colors.white,
                // width: double.infinity,
                // height: double.infinity,
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      TextButton(
                          onPressed: () {
                            print('text button');
                          },
                          child: Text('click me')),
                      IconButton(
                          onPressed: () {
                            print('icon clicked');
                          },
                          icon: Icon(Icons.facebook_rounded)),
                    ]),
                    ElevatedButton(
                      onPressed: () {
                        print('button clicked');
                      },
                      child: Text('button'),
                    )
                  ],
                )),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
