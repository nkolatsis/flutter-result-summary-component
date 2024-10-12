// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Center(
        child: Column(
          children: [
            overviewComponent(),
            summaryComponent(),
          ],
        ),
      ),
    );
  }

  Container summaryComponent() {
    return Container(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Summary",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ListView(
              shrinkWrap: true,
              children: [
                buildSummaryItem(
                  "Reaction",
                  80,
                  Colors.red,
                  Icons.bolt,
                ),
                buildSummaryItem(
                  "Memory",
                  92,
                  Colors.orange,
                  Icons.lightbulb,
                ),
                buildSummaryItem(
                  "Verbal",
                  61,
                  Colors.green,
                  Icons.chat,
                ),
                buildSummaryItem(
                  "Visual",
                  73,
                  Colors.blue,
                  Icons.remove_red_eye,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff303B59),
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  Widget buildSummaryItem(
      String title, int score, Color color, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        tileColor: color.withOpacity(0.05),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        leading: Icon(
          iconData,
          color: color,
          size: 30,
        ),
        title: Text(
          title,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: color),
        ),
        trailing: Wrap(
          children: [
            Text(
              '$score',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            Text(
              ' / 100',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[500]),
            ),
          ],
        ),
      ),
    );
  }

  Container overviewComponent() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF7755FF),
            Color(0xFF6943FF),
            Color(0xFF2F2CE9),
          ],
          stops: [0.0, 0.01, 1.0],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Your Result",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 16),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF4D21C9),
                  Color(0x002521C9),
                  Color(0x002521C9),
                ],
                stops: [0.0, 1.0, 1.0],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "76",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "of 100",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Text(
            "Great",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16),
          Text(
            "Your performance exceeds 65% of the people conducting the test here!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
