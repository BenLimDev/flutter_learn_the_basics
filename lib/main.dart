import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonText = 'No';
  int userAt = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('Are you fine?')),
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                print("center button worked");
                setState(() {
                buttonText = 'Yes';
                });
              },
              child: Text(buttonText),
            ),
          ),

          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                label: 'bath',
                icon: Icon(Icons.bathtub_rounded),
              ),
              BottomNavigationBarItem(
                label: 'catch a pokemon',
                icon: Icon(Icons.catching_pokemon_rounded),
              ),
              BottomNavigationBarItem(
                label: 'bed',
                icon: Icon(Icons.airline_seat_individual_suite_rounded),
              ),
            ],
          currentIndex: userAt,
          onTap: (int pressedIndex) {
            print(pressedIndex);
            setState(() {
              userAt = pressedIndex;
            });
          },
          ),
        ),
        );
  }
}
