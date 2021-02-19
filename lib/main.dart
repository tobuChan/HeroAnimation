import 'dart:ui';
import 'package:flutter/material.dart';
import 'details.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      title: 'Flutter',
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hero Animation'),
          centerTitle: true,
        ),
        body: DogList());
  }
}

class DogList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DogListState();
}

class _DogListState extends State<DogList> {
  List dogPicList = [
    {
      'id': 1,
      'url': 'img/Alashak.jpg',
      'intr':
          'The Alaskan Malamute (/ˈmæləˌmjuːt/) is a large breed of dog that was originally bred for their strength and endurance to haul heavy freight as a sled dog and hound.'
    },
    {
      'id': 2,
      'url': 'img/demu.jpg',
      'intr':
          'The German Shepherd (German: Deutscher Schäferhund, German pronunciation: [ˈdɔʏtʃɐ ˈʃɛːfɐˌhʊnt]) is a breed of medium to large-sized working dog that originated in Germany. '
    },
    {
      'id': 3,
      'url': 'img/hashiqi.jpg',
      'intr':
          'A husky is a sled dog used in the polar regions. One can differentiate huskies from other dog types by their fast pulling-style. They represent an ever-changing crossbreed of the fastest dogs.'
    },
    {
      'id': 4,
      'url': 'img/jinmao.jpg',
      'intr':
          'The Golden Retriever is a medium-large gun dog that was bred to retrieve shot waterfowl, such as ducks and upland game birds, during hunting and shooting parties.'
    },
    {
      'id': 5,
      'url': 'img/sugelan.jpg',
      'intr':
          'The crisply coated Scottish Deerhound, “Royal Dog of Scotland,” is a majestically large coursing hound struck from the ancient Greyhound template.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dogPicList.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            height: 300,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Detail(path: dogPicList[index]['url'])));
                  },
                  child: Container(
                    height: 300,
                    width: 200,
                    child: Hero(
                      tag: dogPicList[index]['url'],
                      child: Image.asset(dogPicList[index]['url'],
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width - 220,
                  child: Text(
                    dogPicList[index]['intr'],
                    style: TextStyle(fontSize: 25),
                  ),
                )
              ],
            ),
          );
        });
  }
}
