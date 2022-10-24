import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:islami/Screens/Quran/quran_screen.dart';
import 'package:islami/Screens/Timer/timer.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              Text(
                "WAY TO HAVEN ",
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15,),
              Text(
                "Read and Learn Quran it's the way to haven",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: 15,),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage("asset/QuranIcon.jpg"),
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,  MaterialPageRoute(builder: (context) => QuranScreen()),);
                },
                child:Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  width: 190,
                  padding: EdgeInsets.all(15),
                  child:Text("Get Start",style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
