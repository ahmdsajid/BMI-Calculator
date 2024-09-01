import 'package:bmi_app/home.dart';
import 'package:flutter/material.dart';

class Splashpage extends StatelessWidget {
  const Splashpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2b3728),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("BMI Calculator",
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 30,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40)
              ),
              onPressed: (){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Home(),)
                );
              }, 
              child: Text("Start",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),))
          ],
        ),
      ),
    );
  }
}
