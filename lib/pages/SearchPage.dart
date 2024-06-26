import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchEngine extends StatefulWidget {
  const SearchEngine({super.key});

  @override
  State<SearchEngine> createState() => _SearchEngineState();
}

class _SearchEngineState extends State<SearchEngine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Container(
              height: 100,
              color: Theme.of(context).backgroundColor,
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon:
                            Icon(Icons.arrow_back_ios_new_outlined, size: 25)),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextFormField(
                        textAlign: TextAlign.end,
                        style: TextStyle(fontSize: 35),
                        decoration: InputDecoration(
                            hintText: "Enter Song Name",
                            hintStyle: TextStyle(fontSize: 35)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
