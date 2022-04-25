import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const routeName='/splash-screen';

  @override
  Widget build(BuildContext context) {

    void initState(){
      SharedPreferences.getInstance().then((prefs){
        var isShowed=prefs.getBool('introShowed');
        if(isShowed==null){
          Navigator.pushNamed(context, '/tab-screen');
        }
        else{
          Navigator.pushNamed(context, '/splash-screen');
        }
      });
    }
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Image.asset('assets/img/startscreenpic.png'),
            SizedBox(height: 50,),
            Text('Lets start our day with exciting meals.',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),),
            SizedBox(height: 190,),
            ElevatedButton(
              onPressed: ()async {
                SharedPreferences prefs=await SharedPreferences.getInstance();
                await prefs.setBool('intoShowed', true);
                Navigator.pushNamed(context, '/tab-screen');
              },
                  child: Text('Get Started'), // <-- Text

              ),
          ],
        ),
      ),
    );
  }
}
//onPressed: () {
//                 Navigator.pushNamed(context, '/categories-screen');
//               },
