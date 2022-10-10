import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black, brightness: Brightness.dark),
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  final TextStyle topMenuStyle = new TextStyle(
      fontFamily: 'Avenir next',
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.w600);
  final TextStyle buttonInfoStyle = new TextStyle(
      fontFamily: 'Avenir next',
      fontSize: 10,
      color: Colors.white,
      fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Material(
      child: Container(
          // color: Colors.red,
          child: Center(
        child: ListView(
          children: <Widget>[
            Container(
              height: 430,
              // color: Colors.blue,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage("lib/assets/1.jpg"),
                    fit: BoxFit.fill),
              ), // we can change to be backgroundimage instead
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                            height: 50,
                            width: 50,
                            child: Image(
                              image: AssetImage("lib/assets/netflix.png"),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: Colors.black,
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.add, color: Colors.white, size: 30),
                        Text(
                          'Тизме',
                          style: buttonInfoStyle,
                        )
                      ],
                    ),
                    onPressed: () {},
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.black,
                    hoverColor: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        ),
                        Text(
                          "Play",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    onPressed: () {},
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.black,
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.info,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          'Info',
                          style: buttonInfoStyle,
                        )
                      ],
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            makePopularWidget("Netflix те популярдуу"),
            makePopularWidget("Азыр трендде"),
            makeContinueWatching("Көрүүнү улантыңыз"),
            bannerMovie(),
            makeNetflixOrig('NETFLIX оригиналдары >'),
            makePopularWidget("Кайра көрүү"),
            makePopularWidget("Жаңы Фильмдер"),
            makePopularWidget("АКШнын телепрограммалары"),
            makePopularWidget("Кыргызстандын программалар"),
            makePopularWidget("Комедиялар"),
            makePopularWidget("Романтикалык программалар"),
            makePopularWidget("үй-бүлө ТВ программалары"),
            makePopularWidget("Европалык тасмалары"),
            makePopularWidget("өспүрүмдөр үчүн телепрограммалар"),
            makePopularWidget("Мыкты тандоолор үчүн фильмдер "),
            makePopularWidget("Документалдуу фильмдер"),
            makePopularWidget("Кыргыз телефильм"),
            makePopularWidget("Кылмыштуулук боюнча программалар"),
            makePopularWidget("Ансамбль телепрограммалары"),
          ],
        ),
      )),
    );
  }

  Widget bannerMovie() {
    return new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Азыр жеткиликтүү',
              style: topMenuStyle,
            ),
          ),
          Container(
            child: Image(
              image: new AssetImage("lib/assets/birdboxBanner.jpg"),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 4, bottom: 4),
            color: Colors.black,
          )
        ],
      ),
    );
  }

  Widget makeNetflixOrig(String title) {
    return new Container(
      padding: EdgeInsets.only(top: 30, left: 10),
      height: 400,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(title, style: topMenuStyle),
                ]),
          ),
          Container(
            height: 350,
            child: ListView(
                padding: EdgeInsets.only(right: 6),
                scrollDirection: Axis.horizontal,
                //shrinkWrap: true,
                children: makeOriginals()),
          )
        ],
      ),
    );
  }

  int counter = 0;
  List<Widget> makeOriginals() {
    List<Container> movieList = [];
    for (int i = 0; i < 6; i++) {
      counter++;
      movieList.add(new Container(
        margin: EdgeInsets.only(right: 10, top: 10),
        width: 200,
        decoration: new BoxDecoration(
          image: new DecorationImage(
              image:
                  new AssetImage("lib/assets/" + counter.toString() + ".jpg"),
              fit: BoxFit.fitHeight),
        ),
      ));
      if (counter == 12) {
        counter = 0;
      }
    }
    return movieList;
  }

  Widget makePopularWidget(String title) {
    return new Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      height: 220,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(title, style: topMenuStyle),
                ]),
          ),
          Container(
            height: 200,
            child: ListView(
                padding: EdgeInsets.all(3),
                scrollDirection: Axis.horizontal,
                //shrinkWrap: true,
                children: makeContainers()),
          )
        ],
      ),
    );
  }

  Widget makeContinueWatching(String title) {
    return new Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      height: 220,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(title, style: topMenuStyle),
                ]),
          ),
          Container(
            height: 200,
            child: ListView(
                padding: EdgeInsets.all(3),
                scrollDirection: Axis.horizontal,
                //shrinkWrap: true,
                children: makeContinueContainers()),
          )
        ],
      ),
    );
  }

  List<Widget> makeContainers() {
    List<Container> movieList = [];
    for (int i = 0; i < 6; i++) {
      counter++;
      movieList.add(new Container(
        padding: EdgeInsets.all(5),
        height: 200,
        child: Image(
          image: AssetImage("lib/assets/" + counter.toString() + ".jpg"),
        ),
      ));
      if (counter == 12) {
        counter = 0;
      }
    }
    return movieList;
  }

  List<Widget> makeContinueContainers() {
    List<Container> movieList = [];
    for (int i = 0; i < 6; i++) {
      counter++;
      movieList.add(new Container(
          padding: EdgeInsets.all(2),
          height: 200,
          child: Column(
            children: <Widget>[
              Container(
                height: 140,
                width: 100,
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new AssetImage(
                          "lib/assets/" + counter.toString() + ".jpg"),
                      fit: BoxFit.fitHeight),
                ),
                child: Center(
                    child: FloatingActionButton(
                  child: Icon(
                    Icons.play_circle_outline,
                    size: 70,
                  ),
                  onPressed: () {},
                )),
              ),
              Container(
                height: 30,
                margin: EdgeInsets.all(3),
                padding: EdgeInsets.only(left: 10, right: 10),
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(right: 25),
                      child: Text(
                        'S1:E' + i.toString(),
                        style: TextStyle(color: Color(0xffc1c1c1)),
                      ),
                    ),
                    Icon(Icons.info, size: 15, color: Color(0xffc1c1c1))
                  ],
                ),
              )
            ],
          )));
      if (counter == 12) {
        counter = 0;
      }
    }
    return movieList;
  }
}
