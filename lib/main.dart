import 'package:flutter/material.dart';
import 'homepage.dart';

void main() => runApp(Netflix());

class Netflix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: NetflixTabBar(),
    );
  }
}

class NetflixTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Theme(
        data: ThemeData(brightness: Brightness.dark),
        child: Scaffold(
          bottomNavigationBar: TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.extension,
                  ),
                  text: "Башы",
                ),
                Tab(icon: Icon(Icons.search), text: "Издөө"),
                Tab(
                    icon: Icon(Icons.file_download),
                    text: "Жүктөлүп алынгандар"),
                Tab(icon: Icon(Icons.list), text: "Дагы"),
              ],
              unselectedLabelColor: Color(0xff999999),
              labelColor: Colors.white,
              indicatorColor: Colors.transparent),
          body: TabBarView(
            children: [
              HomePage(),
              Center(
                child: Image(
                  image: AssetImage("lib/assets/starwars.jpg"),
                ),
              ),
              Center(
                child: Image(
                  image: AssetImage("lib/assets/3.jpg"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
