import 'package:flutter/material.dart';

class AddToCart extends StatefulWidget {
  List Items = [];
  AddToCart({super.key,required this.Items});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add to cart'),),
      body: ListView.builder(itemCount:widget.Items.length,
       itemBuilder: (context, index) {
         return ListTile(title: Text(widget.Items[index]['name']),
         subtitle: Text(widget.Items[index]['price']),
         trailing: IconButton(onPressed: (){
          setState(() {
            widget.Items.removeAt(index);
          });
         }, icon: const Icon(Icons.delete)),);
       },),
    );
  }
}
