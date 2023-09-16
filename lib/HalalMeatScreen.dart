import 'package:assignment/AddtoCartScreen.dart';
import 'package:assignment/BigFishesScreen.dart';
import 'package:assignment/FavouriteScreen.dart';
import 'package:assignment/HalalProducts.dart';
import 'package:assignment/LowPriceScreen.dart';
import 'package:assignment/PopularScreen.dart';
import 'package:assignment/SmallFishesScreen.dart';
import 'package:flutter/material.dart';

class HalalMeatScreen extends StatefulWidget {
  const HalalMeatScreen({super.key});

  @override
  State<HalalMeatScreen> createState() => _HalalMeatScreenState();
}

class _HalalMeatScreenState extends State<HalalMeatScreen> {
  List cartItems = [];
  List favItems = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text('Halal Meats',style: TextStyle(color: Colors.white,fontSize: 20),),    
          actions: [
            Wrap(children: [Stack(children: [IconButton(onPressed: ()async{
              await Navigator.push(context, MaterialPageRoute(builder: (context)=>AddToCart(Items: cartItems)));
              setState(() {
              });
            }, icon: const Icon(Icons.shopping_cart_outlined)),
           const Positioned(left: 27,top: 4,
              child: CircleAvatar(backgroundColor: Colors.amber,radius: 10,)),
            Positioned(left: 32,top: 4,
              child: Text('${cartItems.length.toString()}',style: const TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.bold),),),
            ],),
             Stack(children: [
              IconButton(onPressed: ()async {
             await Navigator.push(context, MaterialPageRoute(builder: (context)=>FavouriteScreen(favItems: favItems)));
             setState(() {
               
             });
            }, icon: const Icon(Icons.favorite)),
            const Positioned(left: 27,top: 4,
              child: CircleAvatar(backgroundColor: Colors.amber,radius: 10,)),
            Positioned(left: 32,top: 4,
              child: Text('${favItems.length.toString()}',style: const TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.bold),),),
             ],), 
            
            ],)
          ],  
      ),
      body: Column(
            children: [
                Container(margin: const EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: GridView(scrollDirection:Axis.horizontal,gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 10,//for giving spaces in horizontal
        crossAxisSpacing: 10,//for giving spaces in horizontal
        childAspectRatio: 0.35),//to increase the size
      children: [
        GestureDetector(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Popular() ));
      },
      child: Container(alignment: Alignment.center,margin: const EdgeInsets.fromLTRB(5,0,3,0),
          decoration:const BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.all(Radius.elliptical(50, 50)) ),child:const Text('Popular',style: TextStyle(fontSize: 15,),)),
          ),
        
      GestureDetector(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const LowPrice() ));
      },
      child: Container(alignment: Alignment.center,margin: const EdgeInsets.fromLTRB(3,0,3,0),
          decoration:const BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.all(Radius.elliptical(50, 50)) ),child:const Text('Low Price',style: TextStyle(fontSize: 15,),)),
          ),

      GestureDetector(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const SmallFishes() ));
      },
      child: Container
      (alignment: Alignment.center,margin: const EdgeInsets.fromLTRB(3,0,3,0),
          decoration:const BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.all(Radius.elliptical(50, 50)) ),child:const Text('Small Fishes',style: TextStyle(fontSize: 15,),)),
          ),

      GestureDetector(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const BigFishes()));
      },
      child: Container(alignment: Alignment.center,margin: const EdgeInsets.fromLTRB(3,0,3,0),
          decoration:const BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.all(Radius.elliptical(50, 50)) ),child:const Text('Big Fishes',style: TextStyle(fontSize: 15,),)),
          ),
        ]
      ),
                ),
          
             const SizedBox(height: 10,),
             Expanded(
              child: 
              GridView.builder(itemCount: halalproducts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 0,
                childAspectRatio: 0.75), 
                itemBuilder: 
                (context, index) {
                  return  
                    Container(padding: const EdgeInsets.all(30),margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),decoration: const BoxDecoration(color:Color(0xFFE0E2EE),borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10),topRight: Radius.circular(10),bottomRight: Radius.circular(10))),
                      child: Column(children: [
                        Container(child: Text(halalproducts[index]['name']),),
                        const SizedBox(height: 5,),
                        Container(child: Text(halalproducts[index]['price'])),
                        SizedBox(height: 20,),
                        ElevatedButton(onPressed: (){
                          setState(() {
                            cartItems.add(halalproducts[index]);
                          });
                        },style: ButtonStyle(padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(10, 0, 10, 0))),
                        child: const Text('Add to Cart')),
                        ElevatedButton(onPressed: (){//favourite 's functionality
                          setState(() {
                            favItems.add(halalproducts[index]);
                          });
                        }, child: const Text('Favourite'))
                      ],),
                  );
                },
                )
             ),
            ],
           ),
    );
  }
}












