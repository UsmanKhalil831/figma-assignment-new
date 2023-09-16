import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  List favItems = [];
  FavouriteScreen({super.key,required this.favItems});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Favourites'),),
        body: ListView.builder(itemCount: widget.favItems.length,
          itemBuilder: (context, index) {
            return ListTile(
            title: Text(widget.favItems[index]['name']),
            subtitle: Text(widget.favItems[index]['price']),
            trailing: IconButton(onPressed: (){
              setState(() {
                widget.favItems.removeAt(index);
              });
            }, icon: const Icon(Icons.delete)),);
          },),
    );
  }
}





// import 'package:flutter/material.dart';

// class FavouriteScreen extends StatefulWidget {
//   final List initialItems;
//   const FavouriteScreen({super.key, required this.initialItems});

//   @override
//   State<FavouriteScreen> createState() => _FavouriteScreenState();
// }

// class _FavouriteScreenState extends State<FavouriteScreen> {
//   List itemList = [];
//   @override
//   void initState() {
//     super.initState();
//     itemList.addAll(widget.initialItems);
//   }
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Favourites'),),
//       body:  ListView.builder(
//         itemCount: itemList.length,
//         itemBuilder: (context, index) {
//           return ListTile(

//             title: Text(itemList[index]),
//           );
//         },
//       ),
//     );
//   }
// }