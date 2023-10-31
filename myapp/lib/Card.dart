import 'package:flutter/material.dart';

class cardview extends StatefulWidget {
  final List item;

  const cardview({
    super.key,
    required this.item,
  });

  @override
  State<cardview> createState() => cardviewstate();
}

class cardviewstate extends State<cardview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("cardview"),
      ),
      body: widget.item.isEmpty
          ? Center(
              child: Text(
                "is empty",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            )
          : ListView.builder(
              itemCount: widget.item.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${widget.item[index]["name"]}"),
                  subtitle: Text("${widget.item[index]["price"]}"),
                  trailing: IconButton(
                      onPressed: () {
                        setState(() {});
                        widget.item.removeAt(index);
                      },
                      icon: Icon(Icons.delete)),
                );
              },
            ),
    );
  }
}
