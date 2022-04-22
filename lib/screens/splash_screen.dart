import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const routeName='/splash-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Image.asset('assets/img/startscreenpic.png'),
            SizedBox(height: 50,),
            Text('Lets start our day with exiting meals.',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),),
            SizedBox(height: 190,),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/categories-screen');
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
