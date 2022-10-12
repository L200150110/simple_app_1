// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../utils/emoji.dart';
import '../utils/excercises.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'Message',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ]),
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(children: [
              // header
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                // user
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Hi, Riski!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '10 Oct 2022',
                    style: TextStyle(
                      color: Colors.blue[200],
                    ),
                  ),
                ]),

                // notif
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),
              ]),
              SizedBox(height: 20),
              // search bar
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Search', style: TextStyle(color: Colors.white))
                  ]),
                ),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How do you feel?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(height: 25),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                // bad
                Column(children: [
                  Emoji(
                    emoji: '😣',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Bad',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ]),
                // fine
                Column(children: [
                  Emoji(
                    emoji: '🙂',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Fine',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ]),
                // well
                Column(children: [
                  Emoji(
                    emoji: '😀',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Well',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ]),
                // excelent
                Column(children: [
                  Emoji(
                    emoji: '🥰',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Excelent',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ]),
              ]),
            ]),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
                child: Column(children: [
                  Icon(
                    Icons.horizontal_rule,
                    color: Colors.grey[400],
                    size: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Excercises',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey[800],
                        ),
                      ),
                      Icon(Icons.more_horiz, color: Colors.grey[800]),
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Excercises(
                          icon: Icons.favorite,
                          exercisesTitle: 'Speaking Skills',
                          numberExercises: 15,
                          color: Colors.red[400],
                        ),
                        Excercises(
                          icon: Icons.person,
                          exercisesTitle: 'Reading Skills',
                          numberExercises: 10,
                          color: Colors.green[400],
                        ),
                        Excercises(
                          icon: Icons.star,
                          exercisesTitle: 'Writting Skills',
                          numberExercises: 22,
                          color: Colors.pink[400],
                        ),
                        Excercises(
                          icon: Icons.speaker,
                          exercisesTitle: 'Listening Skills',
                          numberExercises: 8,
                          color: Colors.blue[400],
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
