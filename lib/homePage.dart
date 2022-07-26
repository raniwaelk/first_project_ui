import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:juice_app/fav.dart';
import 'package:juice_app/juice.dart';

import 'data.dart';
import 'juicePostWidget.dart';

class homePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return homePageState();
  }
}

class homePageState extends State<homePage> {
  likeState(Juice obj) {
    int index = objects.indexOf(obj);
    objects[index].isLike = !objects[index].isLike;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          leading: const Center(
            child: const Text(
              'HOME',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          centerTitle: true,
          title: Image.asset(
            'assets/icons/orange.png',
            width: 30,
            height: 30,
            fit: BoxFit.cover,
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              onPressed: () async {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return FavScreen(likeState);
                })));
              },
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
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
              itemCount: objects.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    juicePostWidget(objects[index], likeState),
                  ],
                );
              }),
        ));
  }
}
