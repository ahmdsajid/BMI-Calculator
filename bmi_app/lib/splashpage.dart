import 'package:bmi_app/home.dart';
import 'package:flutter/material.dart';

class Splashpage extends StatelessWidget {
  const Splashpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2b3728),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("BMI Calculator",
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(height: 30,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 40)
              ),
              onPressed: (){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const Home(),)
                );
              }, 
              child: const Text("Start",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),))
          ],
        ),
      ),
    );
  }
}
