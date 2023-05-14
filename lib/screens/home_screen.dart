import 'package:flutter/material.dart';
import 'package:fyp_project/screens/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class ForestorDetail {
  String name;
  int id;
  String avatar;
  String reigon;

  ForestorDetail({
    required this.name,
    required this.avatar,
    required this.id,
    required this.reigon,
  });
}

class _HomeScreenState extends State<HomeScreen> {
  List forestorsList = [
    ForestorDetail(
        name: 'hamad', avatar: backgroundImage1, id: 1234, reigon: 'swat'),
    ForestorDetail(
        name: 'hamad', avatar: backgroundImage1, id: 1234, reigon: 'swat'),
    ForestorDetail(
        name: 'hamad', avatar: backgroundImage1, id: 1234, reigon: 'swat'),
    ForestorDetail(
        name: 'hamad', avatar: backgroundImage1, id: 1234, reigon: 'swat'),
    ForestorDetail(
        name: 'hamad', avatar: backgroundImage1, id: 1234, reigon: 'swat'),
    ForestorDetail(
        name: 'hamad', avatar: backgroundImage1, id: 1234, reigon: 'swat'),
    ForestorDetail(
        name: 'hamad', avatar: backgroundImage1, id: 1234, reigon: 'swat'),
    ForestorDetail(
        name: 'hamad', avatar: 'images/facebook.png', id: 1234, reigon: 'swat'),
    ForestorDetail(
        name: 'hamad', avatar: 'images/facebook.png', id: 1234, reigon: 'swat'),
    ForestorDetail(
        name: 'hamad', avatar: 'images/facebook.png', id: 1234, reigon: 'swat'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(backgroundImage1), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: grayColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    ),
                  ),
                  height: 40,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        'Avatar',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Name',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'ID',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Region',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/1.3,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: forestorsList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: ListTile(
                          title: (Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(),
                              Text(forestorsList[index].name),
                              Text(forestorsList[index].id.toString()),
                              Text(forestorsList[index].reigon),
                            ],
                          )),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
