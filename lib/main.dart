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
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(//used for top to bottom app setup
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  <Widget>[
              const CircleAvatar(//used in user profile image
                radius: 50.0,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage('images/angela_yu.jpeg'),
              ),
              const Text(
                  'Angela Yu',
                   style: TextStyle(
                     fontFamily: 'Pacifico',
                     fontSize: 40.0,
                     color: Colors.white,
                     fontWeight: FontWeight.bold,
                   ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,

                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),//divider gives horizontal line
              ),
              //padding widget as parent to card widget
              Card (

                //padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+12 333 444 555',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0,
                      ),
                    ),
                  ) ,
                ),
              ),
              Card (
               //card by default comes with white color
                //padding: const EdgeInsets.all(10.0),//card doesn't support padding
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'angelayu@gmail.com',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0,
                      ),
                    ),
                  )
                ),
              ),



            ],

          ),
        ),
      ),
    );
  }
}
