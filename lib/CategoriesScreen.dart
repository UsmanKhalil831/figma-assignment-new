import 'package:assignment/BignSmallFishesScreen.dart';
import 'package:assignment/ChickenScreen.dart';
import 'package:assignment/FishScreen.dart';
import 'package:assignment/FruitScreen.dart';
import 'package:assignment/HalalMeatScreen.dart';
import 'package:assignment/MeatScreen.dart';
import 'package:assignment/MeatandFishesScreen.dart';
import 'package:assignment/VegetableScreen.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
    
   const CategoryScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
 var cat = ['Meat','Vegetable','Fruit','Fish','Chicken'];

 
    return Scaffold
    (
      body: PageView(
        children: [
              Container( 
              child:   //shop by category page 1 starts
              Column(
              children: [
              Container(
             padding: EdgeInsets.fromLTRB(20, 20, 50, 10),
            color: const Color.fromARGB(255, 36, 30, 130),
            height: MediaQuery.of(context).size.height * 0.4,
            width:MediaQuery.of(context).size.width * 3,
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(child: Text('Hey, Halal',style: TextStyle(color: Colors.white,fontSize: 40),),),
                SizedBox(height: 10,),
                Container(child: Text('Shop',style: TextStyle(color: Colors.white,fontSize: 40),),),
                SizedBox(height: 10,),
                Container(child: Text('By Category',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),)
              ],
            ),
          ),
          Expanded(
          child: 
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  child: GridView(gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,//for giving spaces in horizontal
        crossAxisSpacing: 10,//for giving spaces in horizontal
        childAspectRatio: 0.75),//to increase the size
      children: [
        GestureDetector(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const FishScreen() ));
      },
      child: Container(
        alignment: Alignment.center,margin: EdgeInsets.fromLTRB(3,0,5,0),
          decoration:const BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.all(Radius.elliptical(10, 10)) ),child:const Text('Fishes',style: TextStyle(fontSize: 25,),)),
          ),
        
      GestureDetector(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const MeatScreen() ));
      },
      child: Container(alignment: Alignment.center,margin: EdgeInsets.fromLTRB(3,0,5,0),
          decoration:const BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.all(Radius.elliptical(10, 10)) ),child:const Text('Meats',style: TextStyle(fontSize: 25,),)),
          ),

      GestureDetector(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const VegetableScreen() ));
      },
      child: Container
      (alignment: Alignment.center,margin: EdgeInsets.fromLTRB(3,0,5,0),
          decoration:const BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.all(Radius.elliptical(10, 10)) ),child:const Text('Vegetables',style: TextStyle(fontSize: 25,),)),
          ),

      GestureDetector(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const FruitScreen() ));
      },
      child: Container(alignment: Alignment.center,margin: EdgeInsets.fromLTRB(3,0,5,0),
          decoration:const BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.all(Radius.elliptical(10, 10)) ),child:const Text('Fruits',style: TextStyle(fontSize: 25,),)),
          ),
        ]
      ),
                ),
              )
            ],
          )
          )
        ],
      
      ),
        ),//shop by category page 1 end

        Container(   //shop by category page 2 starts
        child:   
              Column(
              children: 
          [
              Container(
             padding: EdgeInsets.fromLTRB(20, 20, 50, 10),
            color: const Color.fromARGB(255, 36, 30, 130),
            height: MediaQuery.of(context).size.height * 0.4,
            width:MediaQuery.of(context).size.width * 3,
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(child: const Text('Hey, Halal',style: TextStyle(color: Colors.white,fontSize: 40),),),
                SizedBox(height: 10,),
                Container(child: const Text('Shop',style: TextStyle(color: Colors.white,fontSize: 40),),),
                SizedBox(height: 10,),
                Container(child: const Text('By Category',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),)
              ],
            ),
          ),
          const SizedBox(height: 10,),
           Column(
            children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: 
                  
                  GridView(scrollDirection:Axis.horizontal,gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 10,//for giving spaces in horizontal
        crossAxisSpacing: 10,//for giving spaces in horizontal
        childAspectRatio: 0.35),//to increase the size
      children: [
        GestureDetector(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const FishScreen() ));
      },
      child: Container(alignment: Alignment.center,margin: EdgeInsets.fromLTRB(5,0,3,0),
          decoration:const BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.all(Radius.elliptical(50, 50)) ),child:const Text('Fishes',style: TextStyle(fontSize: 15,),)),
          ),
        
      GestureDetector(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const MeatScreen() ));
      },
      child: Container(alignment: Alignment.center,margin: EdgeInsets.fromLTRB(3,0,3,0),
          decoration:const BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.all(Radius.elliptical(50, 50)) ),child:const Text('Meats',style: TextStyle(fontSize: 15,),)),
          ),

      GestureDetector(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const VegetableScreen() ));
      },
      child: Container
      (alignment: Alignment.center,margin: EdgeInsets.fromLTRB(3,0,3,0),
          decoration:const BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.all(Radius.elliptical(50, 50)) ),child:const Text('Vegetables',style: TextStyle(fontSize: 15,),)),
          ),

      GestureDetector(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const FruitScreen() ));
      },
      child: Container(alignment: Alignment.center,margin: EdgeInsets.fromLTRB(3,0,3,0),
          decoration:const BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.all(Radius.elliptical(50, 50)) ),child:const Text('Fruit',style: TextStyle(fontSize: 15,),)),
          ),
            GestureDetector(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const ChickenScreen() ));
      },
      child: Container(alignment: Alignment.center,margin: EdgeInsets.fromLTRB(3,0,5,0),
          decoration:const BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.all(Radius.elliptical(50, 50)) ),child:const Text('Chicken',style: TextStyle(fontSize: 15,),)),
          ),
        ]
      ),
                ),
          
             const SizedBox(height: 10,),
            ],
           ),//expanded 1 end
         Expanded(child: 
            Container(height: MediaQuery.of(context).size.height * 0.35, 
            child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 0,
              childAspectRatio: 0.75,),
              children: [GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const BignSmallFishes()));
                },child: Container(padding:const EdgeInsets.all(30),margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),decoration: const BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10),topRight: Radius.circular(10),bottomRight: Radius.circular(10))),
                child: const Center(child: Text('Big and Small Fishes',style: TextStyle(fontSize: 25),), 
                ),),
                
              ),

                 Container(alignment: Alignment.center,padding: const EdgeInsets.all(17),margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                decoration: const BoxDecoration(color:Color(0xFFE0E2EE),borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10),topRight: Radius.circular(10),bottomRight: Radius.circular(10))),
                child: const Center(child: Text('Big & Small Fishes Fresh from Sea Starting From Rs.36/Kg',style: TextStyle(fontSize: 18),),)),
                
              

                GestureDetector(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const HalalMeatScreen() ));
                },
              child: Container(padding:const EdgeInsets.all(35),margin: const EdgeInsets.all(10),decoration: const BoxDecoration(color: Color.fromARGB(255, 218, 143, 168),borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10),topRight: Radius.circular(10),bottomRight: Radius.circular(10))),
                child: const Center(child: Text('Halal Meats',style: TextStyle(fontSize: 25),), ))),

              Container(alignment: Alignment.center,padding: const EdgeInsets.all(17),margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(color:Color(0xFFE0E2EE),borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10),topRight: Radius.circular(10),bottomRight: Radius.circular(10))),
                child: const Center(child: Text('Halal Meats Organics and Fresh Starting from Rs. 90/kg',style: TextStyle(fontSize: 18),),)),
              ],
              ),
              ),
              )
          ],
         )
         ),
        //shop by category page 2 end
        ]
        ) 
      
    );
  }
}