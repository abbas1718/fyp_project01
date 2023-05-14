import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.purpleAccent,
                        ),

                        width: 200,
                        height: 200,
                        child: Center(child: Text('Container 1'),),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),
                        width: 200,
                        height: 200,
                        child: Center(child: Text('Container 2'),),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),

                        width: 200,
                        height: 200,
                        child: Center(child: Text('Container 3'),),
                      ),
                      Container(
                        color: Colors.teal,
                        width: MediaQuery.of(context).size.height*0.3,
                        height: MediaQuery.of(context).size.height*0.7,
                        child: const Center(child: Text('Container 03',style: TextStyle(fontSize: 15),),),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.teal,
                    width: MediaQuery.of(context).size.height*0.7,
                    height: MediaQuery.of(context).size.height*0.3,
                    child: const Center(child: Text('Container 03',style: TextStyle(fontSize: 15),),),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    color: Colors.red,
                    width: MediaQuery.of(context).size.height*0.7,
                    height: MediaQuery.of(context).size.height*0.3,
                    child: const Center(child: Text('Container', style: TextStyle(fontSize: 14),),),
                  ),
                ],
              ),

            ],
          ),
        )
    );
  }
}
