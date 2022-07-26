import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data.dart';
import 'juicePostWidget.dart';

class FavScreen extends StatefulWidget {
  Function fun;
  FavScreen(this.fun);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FavScreenState();
  }
}

class FavScreenState extends State<FavScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () async {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          title: Center(
            child: const Text(
              'FAVORITES',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          // implement GridView.builder
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: MediaQuery.of(context).size.width / 2,
                  childAspectRatio: 3 / 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 0),
              itemCount: objects.where((element) => element.isLike).length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    juicePostWidget(
                        objects
                            .where((element) => element.isLike)
                            .toList()[index],
                        widget.fun),
                  ],
                );
              }),
        ));
  }
}
