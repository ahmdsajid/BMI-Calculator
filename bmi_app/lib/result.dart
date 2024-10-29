import 'package:bmi_app/home.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Resultpage extends StatelessWidget {
  
  Resultpage({super.key, this.bmiresult,this.resulttext,this.info});

  String? bmiresult;
  String? resulttext;
  String? info;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: 
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Icon(Icons.bar_chart,size: 40,color: Colors.amber,),
            SizedBox(width: 1,),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text('BMI Calculator', style: TextStyle(color: Color(0xffc4eb08),fontWeight: FontWeight.bold),),
            ),
          ],
        ),
        toolbarHeight: kToolbarHeight, 
      automaticallyImplyLeading: false,
      
      
        actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.menu,size: 35,color: Colors.white,))],
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Text('Result', style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              ),),
        
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color(0xff2b3728),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    const Text('Your BMI is',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    Text('$resulttext',style: const TextStyle(color: Colors.blue,fontSize: 22,fontWeight: FontWeight.bold),)
                  ],),
        
                  Text('$bmiresult',style: const TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),
        
                ],),
              ),
              const SizedBox(height: 20,),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
        
                    Column(
                      children: [
                        Text('$info',style: const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),
        
                const Spacer(),
        
              Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Home(),));
              },
              
               color: const Color(0xff97b509), minWidth: 370, height: 65, 
              
              child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('ReCALCULATE',
                  style: TextStyle(color: Colors.black, fontSize: 25,fontWeight: FontWeight.bold),),
                  SizedBox(width: 10,),
        
                  Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: Icon(Icons.rotate_left, size: 40,),
                  )
                ],
              ),),
               
          )
              
          ],
        ),
      ),

    );
  }
}