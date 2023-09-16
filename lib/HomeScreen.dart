import 'package:assignment/AppleJuiceScreen.dart';
import 'package:assignment/FreshLemonScreen.dart';
import 'package:assignment/GreenTeaScreen.dart';
import 'package:assignment/TeaScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(children: [
        Container(     //PageView Conatiner 1 starts
        child:  
        Column
        (
        children: 
      [
        Container(
          child: Stack
        (
            alignment: Alignment.center,
            children: [
            Container
            (
            padding: EdgeInsets.fromLTRB(20, 20, 50, 10),
            color: const Color.fromARGB(255, 36, 30, 130),
            height: MediaQuery.of(context).size.height * 0.4,
            width:MediaQuery.of(context).size.width * 3,
           
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                  const Text('Hey, Halal',style: TextStyle(fontSize: 40,color: Colors.white),),
                  const SizedBox(height: 150,),
                  Row(children: [
                    Container(
                      width:MediaQuery.of(context).size.width * 0.25,
                      child: const Text('DELIVERY TO',style: TextStyle(fontSize: 15,color: Colors.grey),),),
                    Container(
                      child:
                      Container(alignment: Alignment.centerRight,
                    width:MediaQuery.of(context).size.width * 0.55,
                        
                        child: const Text('WITHIN',style: TextStyle(fontSize: 15,color: Colors.grey),),),
                    )
                  ],),
             ],
                    
                  ),   
                
            ),
          Container(
          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.elliptical(50, 50)),color: Color.fromARGB(255, 5, 2, 90)),
                    height: MediaQuery.of(context).size.height * 0.1,
                    width:MediaQuery.of(context).size.width * 0.9,
                    child: const 
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.all(11),
                        child: Icon(Icons.search,color: Colors.white,)
                        ),
                        Expanded(child: Text('Search Products or store',style: TextStyle(color: Colors.grey,fontSize: 20),),
                    ),
                    SizedBox(height: 10,),
                      ],
                    ),
                    
            ),
          
          ],   
          ),
        ),
          const SizedBox(height: 10,),
          Container(height: MediaQuery.of(context).size.height * 0.2,
          child:
          GridView.builder
            (itemCount: 5,scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount
            (
            crossAxisCount: 1,
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
            childAspectRatio: 1,
            ), 
            itemBuilder: 
            (context, index)
            {
              return 
              Container
              (child:
               
                Container(alignment: Alignment.center,padding: const EdgeInsets.all(17),margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                decoration: const BoxDecoration(color:Color(0xFFE0E2EE),borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10),topRight: Radius.circular(10),bottomRight: Radius.circular(10))),
                child: const Center(child: Text('Get 50% OFF on first 3 orders',style: TextStyle(fontSize: 18),),)));
            }
            ),
            
                ),
                Container(child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(alignment: Alignment.centerLeft,
                    child: Text('Recommended',style: TextStyle(fontSize: 25),)))
                ),
               Container(height: MediaQuery.of(context).size.height * 0.23,
          child:
          GridView
            (
              scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount
            (
            crossAxisCount: 1,
            mainAxisSpacing: 0,
            crossAxisSpacing: 5,
            childAspectRatio: 1.5,
          ), 
          children: [
          GestureDetector(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const FreshLemon()));
      },
      child: Container(alignment: Alignment.center,margin: EdgeInsets.fromLTRB(5,0,3,0),
          decoration:const BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.all(Radius.elliptical(10, 10)) ),child:const Text('Fresh Lemon',style: TextStyle(fontSize: 15,),)),
          ),
        
      GestureDetector(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const GreenTea() ));
      },
      child: Container(alignment: Alignment.center,margin: EdgeInsets.fromLTRB(3,0,3,0),
          decoration:const BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.all(Radius.elliptical(10, 10)) ),child:const Text('Green Tea',style: TextStyle(fontSize: 15,),)),
          ),

      GestureDetector(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const AppleJuice()));
      },
      child: Container
      (alignment: Alignment.center,margin: EdgeInsets.fromLTRB(3,0,3,0),
          decoration:const BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.all(Radius.elliptical(10, 10)) ),child:const Text('Apple Juice',style: TextStyle(fontSize: 15,),)),
          ),

      GestureDetector(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Tea()));
      },
      child: Container(alignment: Alignment.center,margin: EdgeInsets.fromLTRB(3,0,3,0),
          decoration:const BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.all(Radius.elliptical(10, 10)) ),child:const Text('Tea',style: TextStyle(fontSize: 15,),)),
          ),
            GestureDetector(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const GreenTea()));
      },
          ),
        
          ],
           
            ),//gridview end
            
                ),
        ],
      ),
      
        ),//PageView 1 Conatiner ends
        Container(    //PageView Conatiner 2 starts
         child:  
        Column
        (
        children: 
      [
        Container(
          child: Stack
        (
            alignment: Alignment.center,
            children: [
            Container
            (
            padding: EdgeInsets.fromLTRB(20, 20, 50, 10),
            color: const Color.fromARGB(255, 36, 30, 130),
            height: MediaQuery.of(context).size.height * 0.4,
            width:MediaQuery.of(context).size.width * 3,
           
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                  const Text('Hey, Halal',style: TextStyle(fontSize: 40,color: Colors.white),),
                  const SizedBox(height: 150,),
                  Row(children: [
                    Container(
                      width:MediaQuery.of(context).size.width * 0.25,
                      child: const Text('DELIVERY TO',style: TextStyle(fontSize: 15,color: Colors.grey),),),
                    Container(
                      child:
                      Container(alignment: Alignment.centerRight,
                    width:MediaQuery.of(context).size.width * 0.55,
                        
                        child: const Text('WITHIN',style: TextStyle(fontSize: 15,color: Colors.grey),),),
                    )
                  ],),
             ],
                    
                  ),   
                
            ),
          Container(
          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.elliptical(50, 50)),color: Color.fromARGB(255, 5, 2, 90)),
                    height: MediaQuery.of(context).size.height * 0.1,
                    width:MediaQuery.of(context).size.width * 0.9,
                    child: const 
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.all(11),
                        child: Icon(Icons.search,color: Colors.white,)
                        ),
                        Expanded(child: Text('Search Products or store',style: TextStyle(color: Colors.grey,fontSize: 20),),
                    ),
                    SizedBox(height: 10,),
                      ],
                    ),
                    
            ),
          
          ],   
          ),
        ),
          const SizedBox(height: 10,),
          Container(height: MediaQuery.of(context).size.height * 0.2,
          child:
          GridView.builder
            (itemCount: 5,scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount
            (
            crossAxisCount: 1,
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
            childAspectRatio: 1,
            ), 
            itemBuilder: 
            (context, index)
            {
              return 
              Container
              (child:
               
                Container(alignment: Alignment.center,padding: const EdgeInsets.all(17),margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                decoration: const BoxDecoration(color:Color(0xFFE0E2EE),borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10),topRight: Radius.circular(10),bottomRight: Radius.circular(10))),
                child: const Center(child: Text('346 PKR',style: TextStyle(fontSize: 18),),)));
            }
            ),
            
                ),
                Container(child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(alignment: Alignment.centerLeft,
                    child: Text('Deals on Fruits & Tea',style: TextStyle(fontSize: 25),)))
                ),
               Container(height: MediaQuery.of(context).size.height * 0.23,
          child:
          GridView
            (
              scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount
            (
            crossAxisCount: 1,
            mainAxisSpacing: 0,
            crossAxisSpacing: 5,
            childAspectRatio: 1.5,
          ), 
          children: [
          GestureDetector(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const FreshLemon()));
      },
      child: Container(alignment: Alignment.center,margin: EdgeInsets.fromLTRB(5,0,3,0),
          decoration:const BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.all(Radius.elliptical(10, 10)) ),child:const Text('Fresh Lemon',style: TextStyle(fontSize: 15,),)),
          ),
        
      GestureDetector(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const GreenTea() ));
      },
      child: Container(alignment: Alignment.center,margin: EdgeInsets.fromLTRB(3,0,3,0),
          decoration:const BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.all(Radius.elliptical(10, 10)) ),child:const Text('Green Tea',style: TextStyle(fontSize: 15,),)),
          ),

      GestureDetector(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const AppleJuice()));
      },
      child: Container
      (alignment: Alignment.center,margin: EdgeInsets.fromLTRB(3,0,3,0),
          decoration:const BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.all(Radius.elliptical(10, 10)) ),child:const Text('Apple Juice',style: TextStyle(fontSize: 15,),)),
          ),

      GestureDetector(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Tea()));
      },
      child: Container(alignment: Alignment.center,margin: EdgeInsets.fromLTRB(3,0,3,0),
          decoration:const BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.all(Radius.elliptical(10, 10)) ),child:const Text('Tea',style: TextStyle(fontSize: 15,),)),
          ),
            GestureDetector(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const GreenTea()));
      },
          ),
        
          ],
           
            ),//gridview end
            
                ),
        ],
      ),  

        )//PageView Conatiner 2 ends
      ],),
     
    );
  }
}