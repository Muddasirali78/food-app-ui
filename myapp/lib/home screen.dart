import 'package:flutter/material.dart';
import 'package:myapp/Card.dart';
import 'package:myapp/data.dart';

class HOME extends StatefulWidget {
  const HOME({
    super.key,
  });

  @override
  State<HOME> createState() => _HOMEState();
}

class _HOMEState extends State<HOME> {
  List chatview = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("prodect add ${chatview.length.toString()}"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: product.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 20),
                child: ListTile(
                    tileColor: Colors.teal,
                    title: Text(product[index]["name"]),
                    subtitle: Text(product[index]["price"].toString()),
                    leading: CircleAvatar(
                      backgroundImage: product[index]["images"],
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            chatview.add(product[index]);
                          });
                        },
                        icon: const Icon(Icons.add))),
              );
            }),
        floatingActionButton: FloatingActionButton(onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => cardview(
                        item: chatview,
                      )));
        }));
  }
}
