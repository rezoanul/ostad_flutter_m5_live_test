import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme:ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.amber),
        color: Colors.blue,
        debugShowCheckedModeBanner: true,
        home:HomeActivity());
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile",style: TextStyle(color: Colors.white, fontSize: 26,)),
        titleSpacing: 0,
        centerTitle: true,
        toolbarHeight:70,
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Colors.blue,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // y axis for Column
        children: [
          const Icon(Icons.person_pin, color: Colors.green, size: 70,),
          Row(
              mainAxisAlignment: MainAxisAlignment.center, // x axis
              children: [
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(text: 'Jhon Doe', style: TextStyle(fontSize: 32, color: Colors.green, fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
              ]
          ),
          Column(
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(text: 'Flutter Batch 4', style: TextStyle(fontSize: 25, color: Colors.blue,
                    )
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
