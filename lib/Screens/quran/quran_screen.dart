import 'package:flutter/material.dart';
import 'package:islami/Screens/Quran/sebha.dart';

class QuranScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.subject_rounded , color: Theme.of(context).primaryColor,size: 32,)),
        title: Text("Quran App " , style: Theme.of(context).textTheme.titleLarge,),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Theme.of(context).primaryColor,size: 32,))
        ],
      ),
      body: Container(
        padding: EdgeInsetsDirectional.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 15,),
            Text(
              "ِSaliy Eali Sayidna Muhamad",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 15,),
            Sebha()
          ],
        ),
      ),
    );
  }
}
