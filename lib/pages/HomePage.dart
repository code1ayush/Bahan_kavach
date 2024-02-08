// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:my_app/pages/HistoryContent.dart';
import 'package:my_app/pages/MapsContent.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: AppBar(
                elevation: 0,
                title: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      "Bahan_kavach",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )),
              )),
          body: Column(children: [
            Container(
              color: Color.fromARGB(255, 41, 105, 52),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 2,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                tabs: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Tab(
                        child: Row(children: [
                          Text(
                            "Maps",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ]),
                      )),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Tab(
                        child: Row(children: [
                          Text(
                            "History",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ]),
                      ))
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  MapsContent(), // Using MapsContent widget for "Maps" tab content
                  HistoryContent(),
                ],
              ), // Closing bracket for TabBarView
            ),
          ]),
        ));
  }
}
