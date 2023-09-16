import 'package:assignment/home.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
           Container//Pageview 1st container starts
           (
            color: const Color.fromARGB(255, 36, 30, 130),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: 
              Column(
                children: [
                  Container(
                   width: MediaQuery.of(context).size.width *0.80,
                  height: MediaQuery.of(context).size.height *0.3,
                  child: const Text('Your holiday shopping delivered to Screen one',style: TextStyle(fontSize: 47,color: Colors.white),),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                  width: MediaQuery.of(context).size.width *0.80,
                  height: MediaQuery.of(context).size.height *0.065,
                  child: const Text('There is something for everyone to enjoy with Sweet Shop ',style: TextStyle(fontSize: 20,color: Colors.white,),),),
                  Container(
                    width: MediaQuery.of(context).size.width *0.80,
                    child: const Text('Favourites Screen 1',style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                  const SizedBox(height: 30,),
                  Padding(
                    padding:EdgeInsets.all(8),
                    child: Row(
                      children: [
                    Container(
                    width: MediaQuery.of(context).size.width *0.10,
                    height: MediaQuery.of(context).size.height *0.01,
                    color: Colors.white,
                    ),
                    SizedBox(width:5),
                     Container(
                    width: MediaQuery.of(context).size.width *0.10,
                    height: MediaQuery.of(context).size.height *0.01,
                    color: Colors.white30,
                    ),
                    ],
                    ),
                    ),
                   const SizedBox(height: 40,),
                  Container(
                    child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIp86sNhjWVytjCqjNgB7ZhNKbqicWlXtJOw&usqp=CAU',
                    width: 150,
                    height: 150,),
                  )
                  ],
              ),
            ),
          ),//Pageview 1st container ends

          Container
          (//Pageview 2nd container starts
            color: const Color.fromARGB(255, 36, 30, 130),
              child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: 
              Column(
                children: [
                  Container(
                   width: MediaQuery.of(context).size.width *0.80,
                  height: MediaQuery.of(context).size.height *0.3,
                  child: const Text('Your holiday shopping delivered to Screen two',style: TextStyle(fontSize: 47,color: Colors.white),),
                ),
                SizedBox(height: 10,),
                Container(
                  width: MediaQuery.of(context).size.width *0.80,
                  height: MediaQuery.of(context).size.height *0.065,
                  child: const Text('There is something for everyone to enjoy with Sweet Shop',style: TextStyle(fontSize: 20,color: Colors.white,),),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width *0.80,
                    child: const Text('Favourites Screen 2',style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                const SizedBox(height: 30,),
                Padding(padding: const EdgeInsets.all(8),
                child:Row(
                    children: [
                    Container(
                    width: MediaQuery.of(context).size.width *0.10,
                    height: MediaQuery.of(context).size.height *0.01,
                    color: Colors.white30,
                    ),
                    const SizedBox(width:5),
                     Container(
                    width: MediaQuery.of(context).size.width *0.10,
                    height: MediaQuery.of(context).size.height *0.01,
                    color: Colors.white,
                    ),
                    ],),
                    ),
                    const SizedBox(height: 40,),
                  Container(
                    child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIp86sNhjWVytjCqjNgB7ZhNKbqicWlXtJOw&usqp=CAU',
                    width: 150,
                    height: 150,),
                  )
                ],
              ),
            ),
          ), //Pageview 2nd container ends
        ],
      ),
      floatingActionButton: Align(alignment: Alignment.bottomCenter,child:
      Container(
        width: 150,
        
       child:
          FloatingActionButton(
              onPressed: () {
                
            Navigator.push(context,MaterialPageRoute(builder: (context) =>home()),
            );
          
              },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              backgroundColor:  Colors.blue,child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
           
            children: 
            [
             
              Text('Get Started'),
              SizedBox(width: 10,),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                   Icon(Icons.forward),
                ],
              ),
            ],
          ),
          ),
      
      ),
      )
      
    
    );
  }
}