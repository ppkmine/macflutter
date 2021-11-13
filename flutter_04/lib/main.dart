import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: [
                  Text('Woman', style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text('Kids',style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text('Shoes', style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text('Bag', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 25,),
            Expanded(
                flex: 2,
                child: Image.asset('assets/bag.jpeg', fit: BoxFit.cover,
            )),
            SizedBox(height: 5,),
            Expanded(
                flex: 3,
                child: Image.asset('assets/cloth.jpeg', fit: BoxFit.cover,)),
          ],
        ),
      )

    );
  }
}
