import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:juice_app/juice.dart';
import 'package:url_launcher/url_launcher.dart';

class ExpandedScreen extends StatefulWidget {
  Juice obj;
  Function fun;
  ExpandedScreen(this.obj, this.fun);

  @override
  State<ExpandedScreen> createState() => _ExpandedScreenState();
}

class _ExpandedScreenState extends State<ExpandedScreen> {
  Future<void> _launchInBrowser() async {
    launchUrl(
      Uri.parse('https://www.purewow.com/food/healthy-juice-recipes'),
      mode: LaunchMode.externalApplication,
    );
  }

  @override
  Widget build(BuildContext context) {
    num? prices = widget.obj.price;
    String? names = widget.obj.name;
    // TODO: implement build
    return Scaffold(
      body: ListView(children: [
        Container(
          height: MediaQuery.of(context).size.height * 3 / 4,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(widget.obj.photoUrl ?? ''),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ))
                ],
              ),
              const Spacer()
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                ' $names',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {
                    widget.fun(widget.obj);
                    setState(() {});
                  },
                  icon: Icon(Icons.favorite,
                      color: widget.obj.isLike ? Colors.red : Colors.black54))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                'Total Price: \$ $prices',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            _launchInBrowser();
          },
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text(
                    'Click To Go To The Website',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
