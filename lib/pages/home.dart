import "package:catalog_project/models/catalog.dart";
import "package:catalog_project/utils/widgets/item_widget.dart";
import "package:flutter/material.dart";

import "../utils/widgets/drawer.dart";

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(10, (index) => CatalogModdel.items[0]);

    int age = 17;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummylist.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummylist[index],
            );
          },
        ),
      ),
      drawer: mydrawer(),
    );
  }
}
