import 'package:flutter/material.dart';

class ALTile extends StatefulWidget {
  const ALTile({Key? key}) : super(key: key);

  @override
  State<ALTile> createState() => _ALTileState();
}

class _ALTileState extends State<ALTile> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  List<String> items = ["Martin","amal","ashwin","Martin","amal","ashwin","Martin","amal","ashwin"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: items.length,
        itemBuilder: (context, index, animation) {
          return SizedBox(
            width: 200,
            child: ListTile(
              selectedTileColor: Colors.green,
              onTap: (){
                items.remove(items[index]);
                setState(() {

                });
              },
              title: Text(items[index], style: const TextStyle(color: Colors.black),),
            ),
          );
        },
      ),
    );
  }
}
