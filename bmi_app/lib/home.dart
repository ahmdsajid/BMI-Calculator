import 'package:bmi_app/logic.dart';
import 'package:bmi_app/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool ismale = true;
  double height = 160;
  int Weight = 40;
  int Age = 20;

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
      body: Column(children: [
        Expanded(child: Row(children: [
            Expanded(child: 
            InkWell(
              onTap: (){
                setState(() {
                  ismale = true;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  
                  color: ismale == true ? const Color(0xff3E5C35) : const Color(0xff2b3728),
                  borderRadius: BorderRadius.circular(25),
                
                ),
                margin: const EdgeInsets.all(10),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.male_outlined, size: 50, color: Color(0xffd1f42b),),
                        Text('Male', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),)
                      ],),
                    ),
            )),
            Expanded(child: 
            InkWell(
              onTap: (){
                setState(() {
                  ismale = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: ismale == false ? const Color(0xff3E5C35) : const Color(0xff2b3728),
                    borderRadius: BorderRadius.circular(25),
                
                  ),
                  margin: const EdgeInsets.all(10),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female_outlined, size: 50, color: Color(0xffd1f42b),),
                            Text('Female', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),)
                          ],),
                        ),
            )),
                    ],)),
        Expanded(
          child: 
        Container(
          width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xff2b3728),
              borderRadius: BorderRadius.circular(25),
              
            ),
            margin: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Height',style: TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold),),
                Text("$height",style: const TextStyle(color: Colors.white,fontSize: 50),),
              Slider(
                
                max: 200,
                min: 100,
                activeColor: const Color(0xffd1f42b),
                inactiveColor: Colors.black,
                thumbColor: Colors.white,
                value: height,
                
                onChanged: (value){
                  setState(() {
                    height = value.roundToDouble();
                  });
                },
            
              ),
              ],
            ),
            )),
            

        Expanded(child: Row(children: [
          Expanded(child: 
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff2b3728),
              borderRadius: BorderRadius.circular(25),
              
            ),
            margin: const EdgeInsets.all(10),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              const Text('Weight', style: TextStyle(color: Colors.white, fontSize: 20,),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  minWidth: 8,
                  height: 50,
                color: const Color(0xffd1f42b),  
                onPressed: (){
                  setState(() {
                    Weight--;
                  });
                }, 
                child: const Icon(Icons.remove, 
                color: Colors.black, 
                size: 20,),),
                Text("$Weight", style: const TextStyle(color: Colors.white, fontSize: 40,),),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                minWidth: 8,
                height: 50,
                color: const Color(0xffd1f42b),
                onPressed: (){
                  setState(() {
                    Weight++;
                  });
                }, 
                child: const Icon(Icons.add, 
                color: Colors.black, 
                size: 20,),),
                
              ],),
              const Text('Kg',style: TextStyle(color: Colors.white, fontSize: 20,),),
            
            ], ),
            )),
      
        Expanded(child: 
        Container(
            decoration: BoxDecoration(
              color: const Color(0xff2b3728),
              borderRadius: BorderRadius.circular(25),
              
            ),
            margin: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              const Text('Age', style: TextStyle(color: Colors.white, fontSize: 20,),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  minWidth: 8,
                  height: 50,
                color: const Color(0xffd1f42b),  
                onPressed: (){
                  setState(() {
                    Age--;
                  });
                }, 
                child: const Icon(Icons.remove, 
                color: Colors.black, 
                size: 20,),),
                Text("$Age", style: const TextStyle(color: Colors.white, fontSize: 40,),),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                minWidth: 8,
                height: 50,
                color: const Color(0xffd1f42b),
                onPressed: (){
                  setState(() {
                    Age++;
                  });
                }, 
                child: const Icon(Icons.add, 
                color: Colors.black, 
                size: 20,),),
                
              ],),
              const Text('Year',style: TextStyle(color: Colors.white, fontSize: 20,),),
            
            ], ),
          )),
        ],)),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: MaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            onPressed: (){
              
              Logic cal = Logic(
                height: height.toInt(), Weight: Weight.toInt(),
              );

              Navigator.push(context, MaterialPageRoute(builder: (context) => Resultpage(
                bmiresult: cal.calculatebmi(),
                resulttext: cal.getresult(),
                info: cal.getinfo(),

              ),));

            },
             color: const Color(0xff97b509), minWidth: 370, height: 65, 
            child: Text('CALCULATE',
            style: TextStyle(color: Colors.black, fontSize: 25,fontWeight: FontWeight.bold),),),
        )
      ],),
    );
  }
}