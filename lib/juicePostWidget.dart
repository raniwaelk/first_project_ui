import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:juice_app/data.dart';
import 'package:juice_app/expandedScreen.dart';

import 'juice.dart';

class juicePostWidget extends StatefulWidget {
  Juice obj;
  Function fun;
  juicePostWidget(this.obj, this.fun);

  @override
  State<juicePostWidget> createState() => _juicePostWidgetState();
}

class _juicePostWidgetState extends State<juicePostWidget> {
  @override
  Widget build(BuildContext context) {
    num? prices = widget.obj.price;
    // TODO: implement build
    return GestureDetector(
      onTap: (() {
        Navigator.push(context, MaterialPageRoute(builder: ((context) {
          return ExpandedScreen(widget.obj, widget.fun);
        })));
      }),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 10), blurRadius: 5, color: Colors.grey)
            ],
            color: Colors.grey[300],
            border: Border.all(
              color: Color(0xFFBDBDBD),
            ),
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: NetworkImage(widget.obj.photoUrl ?? ''),
                fit: BoxFit.cover)),
        width: 175,
        height: 500,
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              //Image.network(url ?? '', fit: BoxFit.cover),
              Row(children: [
                Spacer(),
                IconButton(
                    onPressed: () {
                      widget.fun(widget.obj);
                      setState(() {});
                    },
                    icon: Icon(Icons.favorite,
                        color: widget.obj.isLike ? Colors.red : Colors.black54))
              ]),
              Spacer(),
              SizedBox(
                height: 80,
                child: Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.obj.name ?? '',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '\$ $prices',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
